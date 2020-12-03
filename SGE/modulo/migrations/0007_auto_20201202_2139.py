# Generated by Django 3.1.2 on 2020-12-03 02:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('modulo', '0006_reporte'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tipos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipos', models.CharField(max_length=80)),
            ],
        ),
        migrations.AddField(
            model_name='reporte',
            name='evento',
            field=models.ForeignKey(default=0, on_delete=django.db.models.deletion.CASCADE, to='modulo.evento'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='reporte',
            name='id',
            field=models.IntegerField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='reporte',
            name='tipos',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='modulo.tipos'),
        ),
    ]