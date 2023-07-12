# Digital Maturity Django App

### About

The point of whole work was to create some digital resource that applies mathematical models for an accurately
determine digital maturity of academic members of the university.

The dump.sql file contains the necessary rows for survey including weights for mathematical model.

For hosting web-application inside Docker container used Nginx and Gunicorn.

### Stack
- Python3
- Django
- Django Rest Framework
- Nginx
- Gunicorn
- Docker
- PostgreSQL

### Database ER-diagram

<img src="https://github.com/PudgeDaMuerto/DigitalMaturity/assets/29519431/92b71de7-7ae3-4a19-b9d5-c3a777c11534.png" width=700>

### Installation with Docker:

1. Clone repository, create and start containers
    ```shell
    git clone <repo>
    cd <repo>
    ```

2. Create .env file inside repository and add some variables
    ```shell
    SECRET_KEY # 'some secret'
    DEBUG # 0 or 1
    PORT # for example 8080
    ALLOWED_HOSTS # hosts separated by space
    PROTO # protocol (http or https)
    POSTGRES_DB # database name
    POSTGRES_USER # username
    POSTGRES_PASSWORD 
    GUNICORN_WORKERS # number of workers for gunicorn
    TZ # TimeZone
   ```

3. Apply migrations, create superuser for admin page and collect static
    ```shell
    docker compose exec django python manage.py migrate --noinput
    docker compose exec django python manage.py createsuperuser
    docker compose exec django python manage.py collectstatic --no-input --clear
    ```

4. Use dump.sql to insert values in base tables for survey

   Execute inside postgres container:
   ```shell
    psql -h '0.0.0.0' -U "$POSTGRES_USER" "$POSTGRES_DB" < dump.sql
   ```
    or for windows in powershell:
    ```powershell
    docker compose exec postgres_db --% psql -h 0.0.0.0 --username=<POSTGRES_USER> <POSTGRES_DB> < dump.sql
    ```
