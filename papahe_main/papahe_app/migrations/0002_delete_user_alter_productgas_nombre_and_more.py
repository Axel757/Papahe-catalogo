# Generated by Django 4.2.5 on 2023-11-09 20:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('papahe_app', '0001_initial'),
    ]

    operations = [
        migrations.DeleteModel(
            name='User',
        ),
        migrations.AlterField(
            model_name='productgas',
            name='nombre',
            field=models.TextField(max_length=100),
        ),
        migrations.AlterField(
            model_name='productmed',
            name='nombre',
            field=models.TextField(max_length=100),
        ),
    ]