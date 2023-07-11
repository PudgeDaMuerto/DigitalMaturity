# Generated by Django 4.1.4 on 2023-05-04 15:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('digmaturityapp', '0005_remove_respondent_age'),
    ]

    operations = [
        migrations.AddField(
            model_name='respondent',
            name='calculated_result_100',
            field=models.FloatField(default=0, verbose_name='Оценка ЦЗ по 100-бальной шкале'),
        ),
        migrations.AddField(
            model_name='respondent',
            name='calculated_result_5',
            field=models.FloatField(default=0, verbose_name='Оценка ЦЗ по 5-бальной шкале'),
        ),
    ]
