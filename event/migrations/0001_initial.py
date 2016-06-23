# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.utils.timezone
from django.conf import settings
import ckeditor_uploader.fields


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('image', models.ImageField(upload_to=b'event/images', blank=True)),
                ('title', models.CharField(max_length=200, verbose_name=b'Title')),
                ('slug', models.SlugField(unique=True, verbose_name=b'Slug')),
                ('description', ckeditor_uploader.fields.RichTextUploadingField(verbose_name=b'Description')),
                ('start_date', models.DateTimeField(verbose_name=b'Start date')),
                ('end_date', models.DateTimeField(default=django.utils.timezone.now)),
                ('publication_date', models.DateTimeField(verbose_name=b'Publication date')),
                ('author', models.ForeignKey(blank=True, to=settings.AUTH_USER_MODEL, null=True)),
            ],
            options={
                'get_latest_by': 'order_date',
                'verbose_name': 'Event',
                'verbose_name_plural': 'Events',
            },
        ),
    ]
