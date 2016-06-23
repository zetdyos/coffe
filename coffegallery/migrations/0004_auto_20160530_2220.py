# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ('coffegallery', '0003_auto_20160530_0025'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='photo',
            options={'ordering': ['title'], 'verbose_name': 'Photo'},
        ),
        migrations.AlterModelOptions(
            name='youtubevideo',
            options={'ordering': ['title'], 'verbose_name': 'Embed YouTube Video'},
        ),
    ]
