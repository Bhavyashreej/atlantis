# Generated by Django 2.0.13 on 2019-12-07 06:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('academyapp', '0004_lastestnew'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='enquiryform',
            name='gender',
        ),
    ]