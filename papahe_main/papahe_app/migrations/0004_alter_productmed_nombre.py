# Generated by Django 4.2.5 on 2023-11-16 01:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('papahe_app', '0003_productmed_categoria'),
    ]

    operations = [
        migrations.AlterField(
            model_name='productmed',
            name='nombre',
            field=models.CharField(max_length=100),
        ),
    ]
