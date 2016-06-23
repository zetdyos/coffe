# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import imagekit.models.fields


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Location',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(default='Location', max_length=50, verbose_name='Location')),
                ('photo', imagekit.models.fields.ProcessedImageField(upload_to=b'location/store/%Y/%m/%d/')),
                ('map', models.CharField(default='Map', max_length=50, verbose_name='Map')),
                ('address', models.CharField(default='Address', max_length=50, verbose_name='Address')),
                ('phone', models.CharField(default='Phone', max_length=50, verbose_name='Phone')),
                ('hours', models.CharField(default='Store Hours', max_length=50, verbose_name='Store Hours')),
                ('published', models.BooleanField(default=False, verbose_name='Is published?')),
            ],
            options={
                'ordering': ['name'],
                'verbose_name': 'Locations',
            },
        ),
    ]
