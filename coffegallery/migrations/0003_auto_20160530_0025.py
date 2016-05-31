# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):
    dependencies = [
        ('coffegallery', '0002_auto_20160530_0023'),
    ]

    operations = [
        migrations.AlterField(
            model_name='coffealbum',
            name='description',
            field=models.TextField(max_length=255, verbose_name=b'Album description', blank=True),
        ),
    ]
