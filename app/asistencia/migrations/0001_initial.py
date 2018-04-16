# Generated by Django 2.0.3 on 2018-04-13 20:34

import datetime
import django.contrib.auth.models
import django.contrib.auth.validators
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0009_alter_user_last_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('username', models.CharField(error_messages={'unique': 'A user with that username already exists.'}, help_text='Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.', max_length=150, unique=True, validators=[django.contrib.auth.validators.UnicodeUsernameValidator()], verbose_name='username')),
                ('first_name', models.CharField(blank=True, max_length=30, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('email', models.EmailField(blank=True, max_length=254, verbose_name='email address')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.Group', verbose_name='groups')),
            ],
            options={
                'db_table': 'auth_user',
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.CreateModel(
            name='Asistencia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('hora', models.DateTimeField(default=datetime.datetime.now, editable=False)),
            ],
        ),
        migrations.CreateModel(
            name='Barrio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('barrio', models.CharField(max_length=40)),
                ('comuna', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Ciudad',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=3)),
                ('ciudad', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Curso',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=3)),
                ('curso', models.CharField(max_length=40)),
                ('duracion', models.CharField(max_length=40)),
                ('instructor', models.CharField(max_length=40)),
                ('estado', models.BooleanField(default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Departamento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=3)),
                ('departamento', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Entidad',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=3)),
                ('entidad', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Ocupacion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('ocupacion', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Persona',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombres', models.CharField(max_length=50)),
                ('apellidos', models.CharField(max_length=50)),
                ('numeroDocumento', models.BigIntegerField()),
                ('sexo', models.CharField(choices=[('F', 'Femenino'), ('M', 'Masculino')], max_length=1)),
                ('fechaNacimiento', models.DateField(null=True)),
                ('telefono', models.CharField(max_length=15, null=True)),
                ('email', models.EmailField(max_length=254)),
                ('estrato', models.CharField(choices=[('N1', 'Nivel 1'), ('N2', 'Nivel 2'), ('N3', 'Nivel 3'), ('N4', 'Nivel 4'), ('C1', 'Comercial')], max_length=2)),
                ('direccion', models.CharField(max_length=50)),
                ('barrio', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Barrio')),
                ('ciudadResidencia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Ciudad')),
            ],
        ),
        migrations.CreateModel(
            name='PersonaCurso',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('estado', models.CharField(max_length=40)),
                ('curso', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Curso')),
                ('persona', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Persona')),
            ],
        ),
        migrations.CreateModel(
            name='Poblacion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('poblacion', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Sede',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sede', models.CharField(max_length=40)),
                ('direccion', models.CharField(max_length=40)),
            ],
        ),
        migrations.CreateModel(
            name='Servicio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('servicio', models.CharField(max_length=40)),
                ('sede', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Sede')),
            ],
        ),
        migrations.CreateModel(
            name='TipoDocumento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.CharField(max_length=2)),
                ('tipo', models.CharField(max_length=40)),
            ],
        ),
        migrations.AddField(
            model_name='persona',
            name='curso',
            field=models.ManyToManyField(through='asistencia.PersonaCurso', to='asistencia.Curso'),
        ),
        migrations.AddField(
            model_name='persona',
            name='entidad',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Entidad'),
        ),
        migrations.AddField(
            model_name='persona',
            name='ocupacion',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Ocupacion'),
        ),
        migrations.AddField(
            model_name='persona',
            name='poblacion',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Poblacion'),
        ),
        migrations.AddField(
            model_name='persona',
            name='tipoDocumento',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.TipoDocumento'),
        ),
        migrations.AddField(
            model_name='curso',
            name='entidad',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Entidad'),
        ),
        migrations.AddField(
            model_name='curso',
            name='sede',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Sede'),
        ),
        migrations.AddField(
            model_name='ciudad',
            name='departamento',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Departamento'),
        ),
        migrations.AddField(
            model_name='barrio',
            name='ciudad',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='asistencia.Ciudad'),
        ),
        migrations.AddField(
            model_name='asistencia',
            name='curso',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='asistencia.Curso'),
        ),
        migrations.AddField(
            model_name='asistencia',
            name='persona',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Persona'),
        ),
        migrations.AddField(
            model_name='asistencia',
            name='servicio',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='asistencia.Servicio'),
        ),
        migrations.AddField(
            model_name='user',
            name='sede',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='asistencia.Sede'),
        ),
        migrations.AddField(
            model_name='user',
            name='user_permissions',
            field=models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.Permission', verbose_name='user permissions'),
        ),
    ]
