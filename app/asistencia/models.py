from django.db import models
from django.contrib.auth.models import AbstractUser
from datetime import datetime

class Departamento(models.Model):
    codigo = models.CharField(max_length=3)
    departamento = models.CharField(max_length=50)

class Ciudad(models.Model):
    codigo = models.CharField(max_length=3)
    ciudad = models.CharField(max_length=50)
    departamento = models.ForeignKey(Departamento, on_delete=models.CASCADE)

class TipoDocumento(models.Model):
    codigo = models.CharField(max_length=2)
    tipo = models.CharField(max_length=40)

class Ocupacion(models.Model):
    codigo = models.CharField(max_length=2)
    ocupacion = models.CharField(max_length=40)

ListaSexo = (('F','Femenino'),('M','Masculino'),)

ListaEstrato = (('N1','Nivel 1'),('N2','Nivel 2'),('N3','Nivel 3'),('N4','Nivel 4'),('C1','Comercial'),)

class Sede(models.Model):
    sede = models.CharField(max_length=40)
    direccion = models.CharField(max_length=40)

class Tipo(models.Model):
    tipo = models.CharField(max_length=40)

class Servicio(models.Model):
    codigo = models.CharField(max_length=2)
    servicio = models.CharField(max_length=40)
    sede = models.ForeignKey(Sede, on_delete=models.CASCADE)

class Poblacion(models.Model):
    codigo = models.CharField(max_length=2)
    poblacion = models.CharField(max_length=40)

class Entidad(models.Model):
    codigo = models.CharField(max_length=3)
    entidad = models.CharField(max_length=40)

class Instructor(models.Model):
    nombres = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=50)
    tipoDocumento = models.ForeignKey(TipoDocumento, on_delete=models.CASCADE)
    numeroDocumento = models.BigIntegerField()
    ocupacion = models.ForeignKey(Ocupacion, on_delete=models.CASCADE)
    sexo = models.CharField(max_length=1, choices=ListaSexo)
    telefono = models.CharField(max_length=15,null=True)
    email = models.EmailField()
    entidad = models.ForeignKey(Entidad, on_delete=models.CASCADE)

class Curso(models.Model):
    codigo = models.CharField(max_length=3)
    curso = models.CharField(max_length=40)
    duracion = models.CharField(max_length=40)
    instructor = models.CharField(max_length=40)
    estado = models.BooleanField(default=True)
    entidad = models.ForeignKey(Entidad, on_delete=models.CASCADE)
    sede = models.ForeignKey(Sede, on_delete=models.CASCADE)
    tipo = models.ForeignKey(Tipo, on_delete=models.CASCADE)

class Barrio(models.Model):
    barrio = models.CharField(max_length=40)
    comuna = models.CharField(max_length=40)
    ciudad = models.ForeignKey(Ciudad, on_delete=models.CASCADE, null=True)

class Persona(models.Model):
    nombres = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=50)
    ciudadResidencia = models.ForeignKey(Ciudad, related_name='Ciudad_residencia', on_delete=models.CASCADE)
    ciudadNacimiento = models.ForeignKey(Ciudad, related_name='Ciudad_nacimiento', on_delete=models.CASCADE)
    tipoDocumento = models.ForeignKey(TipoDocumento, on_delete=models.CASCADE)
    numeroDocumento = models.BigIntegerField()
    ocupacion = models.ForeignKey(Ocupacion, on_delete=models.CASCADE)
    sexo = models.CharField(max_length=1, choices=ListaSexo)
    fechaNacimiento = models.DateField(null=True)
    telefono = models.CharField(max_length=15,null=True)
    email = models.EmailField()
    estrato = models.CharField(max_length=2, choices=ListaEstrato)
    direccion = models.CharField(max_length=50)
    barrio = models.ForeignKey(Barrio, on_delete=models.CASCADE)
    poblacion = models.ForeignKey(Poblacion, on_delete=models.CASCADE)
    entidad = models.ForeignKey(Entidad, on_delete=models.CASCADE)
    curso = models.ManyToManyField(Curso, through = 'PersonaCurso')

    def getEdad(self):
        return int((datetime.now().date() - self.fechaNacimiento).days / 365.25)

class PersonaCurso(models.Model):
    persona = models.ForeignKey(Persona, on_delete=models.CASCADE)
    curso = models.ForeignKey(Curso, on_delete=models.CASCADE)
    estado = models.CharField(max_length=40)

class Asistencia(models.Model):
    persona = models.ForeignKey(Persona, on_delete=models.CASCADE)
    servicio = models.ForeignKey(Servicio, on_delete=models.CASCADE, null=True)
    tipo = models.ForeignKey(Tipo, on_delete=models.CASCADE, null=True)
    curso = models.ForeignKey(Curso, on_delete=models.CASCADE, null=True)
    hora = models.DateTimeField(default=datetime.now,editable=False)

class User(AbstractUser):
    sede = models.ForeignKey(Sede,on_delete=models.CASCADE)

    class Meta:
        db_table = 'auth_user'

class Soporte(models.Model):
    soporte = models.FileField(upload_to="static/archivos/")
    fecha = models.DateField()
