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
            name='Product',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=200, verbose_name=b'Title')),
                ('slug', models.SlugField(unique=True, verbose_name=b'Slug')),
                ('price', models.DecimalField(verbose_name=b'Price', max_digits=5, decimal_places=2)),
                ('description', ckeditor_uploader.fields.RichTextUploadingField(verbose_name=b'Description')),
                ('publication_date', models.DateTimeField(default=django.utils.timezone.now)),
                ('image', models.ImageField(upload_to=b'product/images', blank=True)),
                ('enable', models.BooleanField(default=True, verbose_name=b'Enable')),
                ('author', models.ForeignKey(blank=True, to=settings.AUTH_USER_MODEL, null=True)),
            ],
            options={
                'verbose_name': 'Product',
                'verbose_name_plural': 'Products',
            },
        ),
    ]
