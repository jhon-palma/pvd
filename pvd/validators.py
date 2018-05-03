from app.asistencia.models import *
from django.core.validators import validate_email
from django.contrib import auth
import string

class Validator(object):
    _post  = None
    required = []
    _message = ''

    def __init__(self, post):
        """
        Carga los datos provenientes de un formulario atraves de POST
        @param post: Datos que proviene de POST
        """
        self._post = post


    def is_empty(self, field):
        """
        Verifica si un campo de formulario es vacio
        @param field: nombre del campo de formulario
        """
        if field == '' or field is None:
            return True
        return False

    def is_valid(self):
        try:
            """
            Indica si existen errores de formuarlio
            @return Boolean
            """
            # validar campos vacios
            for field in self.required:
                if self.is_empty(self._post[field]):

                    self._message = ('El campo %s no puede ser vacio' %  field.upper()).upper()
                    return False

            return True
        except:
            self._message = ('Información incompleta').upper()
            return False

    def getMessage(self):
        return self._message

class LoginValidator(Validator):
    acceso = None

    def is_valid(self):
        if not super(LoginValidator, self).is_valid():
            return False

        usuario = self._post['usuario']
        clave = self._post['password']

        acceso = auth.authenticate(username=usuario, password=clave)
        self.acceso = acceso
        if acceso is None:
            self._message = ('Usuario o contraseña inválido').upper()
            return False
        self._message = ('Bienvenido!!!').upper()
        return True

class UsuarioValidator(Validator):

    def is_valid(self):
        if not super(UsuarioValidator, self).is_valid():
            return False

        if not self._post['psw'] == self._post['rpsw']:
            self._message = ('Las contraseñas no  coinciden').upper()
            return False

        if len(self._post['psw']) < 8:
            self._message = ('La contraseña debe tener minimo 8 Caracteres').upper()
            return False

        if self._post['psw'].isalnum():
            self._message = ('La contraseña debe contener numeros y letras, y un caracter especial').upper()
            return False

        if User.objects.filter(username = self._post['numeroDocumento']).exists():
            self._message = ('El Usuario %s ya se encuentra registrado' %self._post['numeroDocumento']).upper()
            return False

        if self._post['sede'] == '':
            self._message = ('Asigne un perfil al usuario').upper()
            return False

        if self._post['perfil'] == '':
            self._message = ('Asigne un perfil al usuario').upper()
            return False

        self._message = ('Usuario %s creado con exito' %self._post['numeroDocumento']).upper()
        return True

class UsuarioPasswordValidator(Validator):

    def is_valid(self):
        if not super(UsuarioPasswordValidator, self).is_valid():
            return False

        if not self._post['psw'] == self._post['rpsw']:
            self._message = ('Las contraseñas no  coinciden').upper()
            return False

        if len(self._post['psw']) < 8:
            self._message = ('La contraseña debe tener minimo 8 Caracteres').upper()
            return False

        if self._post['psw'].isalnum():
            self._message = ('La contraseña debe contener numeros y letras, y un caracter especial').upper()
            return False

        self._message = ('Contraseña cambiada correctamente').upper()
        return True

class UsuarioEditValidator(Validator):

    def is_valid(self):
        if not super(UsuarioEditValidator, self).is_valid():
            return False

        if self._post['sede'] == '':
            self._message = ('Asigne un perfil al usuario').upper()
            return False

        if self._post['perfil'] == '':
            self._message = ('Asigne un perfil al usuario').upper()
            return False

        self._message = ('Usuario %s fue modificado correctamente' %self._post['numeroDocumento']).upper()
        return True

class PersonaValidator(Validator):

    def is_valid(self):
        if not super(PersonaValidator, self).is_valid():
            return False

        if self._post['tipoDocumento'] == '':
            self._message = ('Seleccione el tipo de Documento').upper()
            return False

        if self._post['ciudad'] == '':
            self._message = ('Seleccione la Ciudad').upper()
            return False

        if self._post['barrio'] == '':
            self._message = ('Seleccione el barrio').upper()
            return False

        if self._post['estrato'] == '':
            self._message = ('Seleccione el estrato').upper()
            return False

        if self._post['ocupacion'] == '':
            self._message = ('Seleccione la ocupación').upper()
            return False

        if self._post['sexo'] == '':
            self._message = ('Seleccione el sexo').upper()
            return False

        if self._post['poblacion'] == '':
            self._message = ('Seleccione la poblacion a la que pertenece').upper()
            return False

        if self._post['entidad'] == '':
            self._message = ('Seleccione la entidad a la que pertenece').upper()
            return False

        if Persona.objects.filter(numeroDocumento = self._post['numeroDocumento']).exists():
            self._message = ('La persona con documento %s ya se encuentra registrada' %self._post['numeroDocumento']).upper()
            return False

        self._message = ('Usuario %s creado con exito' %self._post['numeroDocumento']).upper()
        return True

class PersonaEditValidator(Validator):

    def is_valid(self):
        if not super(PersonaEditValidator, self).is_valid():
            return False

        if self._post['tipoDocumento'] == '':
            self._message = ('Seleccione el tipo de Documento').upper()
            return False

        if self._post['ciudad'] == '':
            self._message = ('Seleccione la Ciudad').upper()
            return False

        if self._post['barrio'] == '':
            self._message = ('Seleccione el barrio').upper()
            return False

        if self._post['estrato'] == '':
            self._message = ('Seleccione el estrato').upper()
            return False

        if self._post['ocupacion'] == '':
            self._message = ('Seleccione la ocupación').upper()
            return False

        if self._post['sexo'] == '':
            self._message = ('Seleccione el sexo').upper()
            return False

        if self._post['poblacion'] == '':
            self._message = ('Seleccione la poblacion a la que pertenece').upper()
            return False

        if self._post['entidad'] == '':
            self._message = ('Seleccione la entidad a la que pertenece').upper()
            return False

        self._message = ('Usuario %s modificado con exito' %self._post['numeroDocumento']).upper()
        return True

class InstructorValidator(Validator):

    def is_valid(self):
        if not super(InstructorValidator, self).is_valid():
            return False

        if self._post['tipoDocumento'] == '':
            self._message = ('Seleccione el tipo de Documento').upper()
            return False

        if self._post['ocupacion'] == '':
            self._message = ('Seleccione la ocupación').upper()
            return False

        if self._post['sexo'] == '':
            self._message = ('Seleccione el sexo').upper()
            return False

        if self._post['entidad'] == '':
            self._message = ('Seleccione la entidad a la que pertenece').upper()
            return False

        if Instructor.objects.filter(numeroDocumento = self._post['numeroDocumento']).exists():
            self._message = ('El instructor identificado con documento %s ya se encuentra registrado.' %self._post['numeroDocumento']).upper()
            return False

        self._message = ('Instructor %s creado con exito' %self._post['numeroDocumento']).upper()
        return True

class InstructorEditValidator(Validator):

    def is_valid(self):
        if not super(InstructorEditValidator, self).is_valid():
            return False

        if self._post['tipoDocumento'] == '':
            self._message = ('Seleccione el tipo de Documento').upper()
            return False

        if self._post['ocupacion'] == '':
            self._message = ('Seleccione la ocupación').upper()
            return False

        if self._post['sexo'] == '':
            self._message = ('Seleccione el sexo').upper()
            return False

        if self._post['entidad'] == '':
            self._message = ('Seleccione la entidad a la que pertenece').upper()
            return False

        self._message = ('Instructor %s modificado con exito' %self._post['numeroDocumento']).upper()
        return True

class CursoValidator(Validator):

    def is_valid(self):
        if not super(CursoValidator, self).is_valid():
            return False

        if self._post['sede'] == '':
            self._message = ('Asigne una sede al curso').upper()
            return False

        if self._post['entidad'] == '':
            self._message = ('Asigne una entidad al curso').upper()
            return False

        if self._post['instructor'] == '':
            self._message = ('Seleccione el instructor del curso').upper()
            return False

        if self._post['tipo'] == '':
            self._message = ('Asigne un tipo al curso').upper()
            return False

        self._message = ('Curso %s creado con éxito' %self._post['nombre']).upper()
        return True

class ServicioValidator(Validator):

    def is_valid(self):
        if not super(ServicioValidator, self).is_valid():
            return False

        if self._post['sede'] == '':
            self._message = ('Asigne una sede al curso').upper()
            return False

        self._message = ('Servicio %s creado con exito' %self._post['nombre']).upper()
        return True

class TipoValidator(Validator):

    def is_valid(self):
        if not super(TipoValidator, self).is_valid():
            return False

        self._message = ('Servicio %s creado con exito' %self._post['nombre']).upper()
        return True

class InscribeCursoValidator(Validator):

    def is_valid(self):
        if not super(InscribeCursoValidator, self).is_valid():
            return False

        if self._post['curso'] == '':
            self._message = ('Asigne el curso').upper()
            return False

        self._message = ('Inscripción realizada con exito').upper()
        return True

class RegistroValidator(Validator):

    def is_valid(self):
        if not super(RegistroValidator, self).is_valid():
            return False

        if self._post['servicio'] == '':
            self._message = ('Seleccione el laboratorio que se usará').upper()
            return False

        if self._post['tipo'] == '':
            self._message = ('Seleccione el tipo de servicio que se usará').upper()
            return False

        self._message = ('Servicio asignado con éxito!!!').upper()
        return True

class AsisteCursoValidator(Validator):

    def is_valid(self):
        if not super(AsisteCursoValidator, self).is_valid():
            return False

        if self._post['asiste'] == '':
            self._message = ('Seleccione las personas aistentes al curso').upper()
            return False

        self._message = ('Asistencia realizada con éxito!!!').upper()
        return True

class ConsultaValidator(Validator):

    def is_valid(self):
        if not super(ConsultaValidator, self).is_valid():
            return False

        if not Persona.objects.filter(numeroDocumento = self._post['documento']):
            self._message = 'La persona identificada con documento %s no se encuentra registrada. Registrela en la opción correspondiente' %self._post['documento']
            return False

        self._message = ('¡!').upper()
        return True

class InstructorCValidator(Validator):

    def is_valid(self):
        if not super(InstructorCValidator, self).is_valid():
            return False

        if not Instructor.objects.filter(numeroDocumento = self._post['documento']):
            self._message = 'El Instructor identificado con documento %s no se encuentra registrado. Registrelo en la opción correspondiente' %self._post['documento']
            return False

        self._message = ('¡!').upper()
        return True

class ConsultaUsuarioValidator(Validator):

    def is_valid(self):
        if not super(ConsultaUsuarioValidator, self).is_valid():
            return False

        if not User.objects.filter(username = self._post['documento']):
            self._message = 'El usuario %s no se encuentra registrado' %self._post['documento']
            return False

        self._message = ('¡!').upper()
        return True

class SoporteValidator(Validator):

    def is_valid(self):
        if not super(SoporteValidator, self).is_valid():
            return False

        if self._post['sede'] == '':
            self._message = ('Seleccione una sede').upper()
            return False

        self._message = ('ARCHIVO SUBIDO CORRECTAMENTE').upper()
        return True
