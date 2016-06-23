# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Article',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('image', models.ImageField(upload_to=b'article/images', blank=True)),
                ('title', models.CharField(max_length=200, verbose_name=b'Title')),
                ('slug', models.SlugField(unique=True, verbose_name=b'Slug')),
                ('content', models.TextField(verbose_name=b'Content')),
                ('publication_date', models.DateTimeField(verbose_name=b'Publication date')),
                ('enable_comments', models.BooleanField(default=True, verbose_name=b'Enable comments')),
                ('author', models.ForeignKey(blank=True, to=settings.AUTH_USER_MODEL, null=True)),
            ],
            options={
                'verbose_name': 'Article',
                'verbose_name_plural': 'Articles',
            },
        ),
    ]
