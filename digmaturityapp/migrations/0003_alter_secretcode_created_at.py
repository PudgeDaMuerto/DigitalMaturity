# Generated by Django 4.1.4 on 2023-05-03 16:13

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('digmaturityapp', '0002_alter_answer_options_alter_block_options_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='secretcode',
            name='created_at',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Создан'),
        ),
    ]
