# Digital Maturity Django App

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
    ```shell
    docker compose exec postgres_db psql -h 0.0.0.0 --username=<POSTGRES_USER> <POSTGRES_DB> < dump.sql
    ```