from django.shortcuts import render
from .models import *
from django.http import HttpResponse, HttpResponseRedirect,JsonResponse
from django.contrib import messages
from django.core import serializers
import json
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User, Group
from pvd.validators import *
from django.contrib.auth.hashers import make_password
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import datetime

def login(request):
    if request.method == 'POST':
        validator = LoginValidator(request.POST)
        if validator.is_valid():
            usuario = request.POST['usuario']
            clave = request.POST['password']
            auth.login(request, validator.acceso)
            messages.success(request,'Bienvenido %s!!!' % request.user.first_name)
            return HttpResponseRedirect('/asistencia/registro')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/' )
    return render(request,'login.html')

@login_required(login_url="/")
def logout(request):
    auth.logout(request)
    return HttpResponseRedirect("/")

@login_required(login_url="/")
def persona_create(request):
    create = True
    tipoDocumento = TipoDocumento.objects.all().order_by('tipo')
    ciudades = Ciudad.objects.all()
    departamentos = Departamento.objects.all()
    ocupaciones = Ocupacion.objects.all().order_by('ocupacion')
    barrios = Barrio.objects.all().order_by('barrio')
    estratos = ListaEstrato
    sexos = ListaSexo
    poblaciones = Poblacion.objects.all().order_by('poblacion')
    entidades = Entidad.objects.all().order_by('entidad')
    if request.method == 'POST':
        validator = PersonaValidator(request.POST)
        validator.required = ['numeroDocumento','nombres','apellidos','direccion','telefono','fechaNacimiento', 'email']
        if validator.is_valid():
            persona = Persona()
            persona.nombres = request.POST['nombres'].upper()
            persona.apellidos = request.POST['apellidos'].upper()
            persona.ciudadResidencia = Ciudad.objects.get(pk = request.POST['ciudad'])
            persona.tipoDocumento = TipoDocumento.objects.get(pk=request.POST['tipoDocumento'])
            persona.numeroDocumento = request.POST['numeroDocumento']
            persona.ocupacion = Ocupacion.objects.get(pk = request.POST['ocupacion'])
            persona.sexo = request.POST['sexo'].upper()
            persona.fechaNacimiento = request.POST['fechaNacimiento']
            persona.telefono = request.POST['telefono']
            persona.email = request.POST['email']
            persona.estrato = request.POST['estrato']
            persona.direccion = request.POST['direccion'].upper()
            persona.barrio = Barrio.objects.get(pk = request.POST['barrio'])
            persona.poblacion = Poblacion.objects.get(pk = request.POST['poblacion'])
            persona.entidad = Entidad.objects.get(pk = request.POST['entidad'])
            persona.ciudadNacimiento = Ciudad.objects.get(pk = request.POST['ciudadn'])
            persona.save()
            messages.success(request,'Usuario creado correctamente')
            return HttpResponseRedirect('/asistencia/persona_create')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/persona_create')
    return render(request,'persona_create.html',{'tipoDocumento':tipoDocumento,'departamentos':departamentos,'ciudades':ciudades,'ocupaciones':ocupaciones,'barrios':barrios,'estratos':estratos,'sexos':sexos,'poblaciones':poblaciones,'entidades':entidades,'create':create})

@login_required(login_url="/")
def persona_consulta(request):
    query = True
    if request.method == 'POST':
        validator = ConsultaValidator(request.POST)
        validator.required = ['documento']
        if validator.is_valid():

            persona = Persona.objects.get(numeroDocumento = request.POST['documento'])
            return HttpResponseRedirect('/asistencia/persona_edit/%s' %persona.id)
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/persona_consulta',{'query':query})
    return render(request,'persona_create.html',{'query':query})

@login_required(login_url="/")
def persona_edit(request, id_persona):
    edit = True
    tipoDocumento = TipoDocumento.objects.all().order_by('tipo')
    departamentos = Departamento.objects.all()
    ciudades = Ciudad.objects.all()
    ocupaciones = Ocupacion.objects.all().order_by('ocupacion')
    barrios = Barrio.objects.all().order_by('barrio')
    estratos = ListaEstrato
    sexos = ListaSexo
    poblaciones = Poblacion.objects.all().order_by('poblacion')
    entidades = Entidad.objects.all()
    persona = Persona.objects.get(pk = id_persona)
    if request.method == 'POST':
        validator = PersonaEditValidator(request.POST)
        validator.required = ['numeroDocumento','nombres','apellidos','direccion','telefono','fechaNacimiento', 'email']
        if validator.is_valid():
            persona.nombres = request.POST['nombres'].upper()
            persona.apellidos = request.POST['apellidos'].upper()
            persona.ciudadResidencia = Ciudad.objects.get(pk = request.POST['ciudad'])
            persona.tipoDocumento = TipoDocumento.objects.get(pk=request.POST['tipoDocumento'])
            persona.numeroDocumento = request.POST['numeroDocumento']
            persona.ocupacion = Ocupacion.objects.get(pk = request.POST['ocupacion'])
            persona.sexo = request.POST['sexo'].upper()
            persona.fechaNacimiento = request.POST['fechaNacimiento']
            persona.telefono = request.POST['telefono']
            persona.email = request.POST['email']
            persona.estrato = request.POST['estrato']
            persona.direccion = request.POST['direccion'].upper()
            persona.barrio = Barrio.objects.get(pk = request.POST['barrio'])
            persona.poblacion = Poblacion.objects.get(pk = request.POST['poblacion'])
            persona.entidad = Entidad.objects.get(pk = request.POST['entidad'])
            persona.ciudadNacimiento = Ciudad.objects.get(pk = request.POST['ciudadn'])
            persona.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/persona_consulta')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/persona_consulta')
    return render(request,'persona_create.html',{'persona':persona,'departamentos':departamentos,'tipoDocumento':tipoDocumento,'ciudades':ciudades,'ocupaciones':ocupaciones,'barrios':barrios,'estratos':estratos,'sexos':sexos,'poblaciones':poblaciones,'entidades':entidades,'edit':edit})

@login_required(login_url="/")
def instructor_create(request):
    create = True
    tipoDocumento = TipoDocumento.objects.all().order_by('tipo')
    ocupaciones = Ocupacion.objects.all().order_by('ocupacion')
    sexos = ListaSexo
    entidades = Entidad.objects.all()
    if request.method == 'POST':
        validator = InstructorValidator(request.POST)
        validator.required = ['numeroDocumentos','nombres','apellidos','telefono', 'email']
        if validator.is_valid():
            instructor = Instructor()
            instructor.nombres = request.POST['nombres'].upper()
            instructor.apellidos = request.POST['apellidos'].upper()
            instructor.tipoDocumento = TipoDocumento.objects.get(pk=request.POST['tipoDocumento'])
            instructor.numeroDocumento = request.POST['numeroDocumentos']
            instructor.ocupacion = Ocupacion.objects.get(pk = request.POST['ocupacion'])
            instructor.sexo = request.POST['sexo'].upper()
            instructor.telefono = request.POST['telefono']
            instructor.email = request.POST['email']
            instructor.entidad = Entidad.objects.get(pk = request.POST['entidad'])
            instructor.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/instructor_create')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/instructor_create')
    return render(request,'instructor_create.html',{'tipoDocumento':tipoDocumento,'ocupaciones':ocupaciones,'sexos':sexos,'entidades':entidades,'create':create})

@login_required(login_url="/")
def instructor_consulta(request):
    query = True
    if request.method == 'POST':
        validator = InstructorCValidator(request.POST)
        validator.required = ['documento']
        if validator.is_valid():
            instructor = Instructor.objects.get(numeroDocumento = request.POST['documento'])
            return HttpResponseRedirect('/asistencia/instructor_edit/%s' % instructor.id)
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/instructor_consulta',{'query':query})
    return render(request,'instructor_create.html',{'query':query})

@login_required(login_url="/")
def instructor_edit(request, id_instructor):
    edit = True
    tipoDocumento = TipoDocumento.objects.all().order_by('tipo')
    ocupaciones = Ocupacion.objects.all().order_by('ocupacion')
    sexos = ListaSexo
    entidades = Entidad.objects.all()
    instructor = Instructor.objects.get(pk = id_instructor)
    if request.method == 'POST':
        validator = InstructorEditValidator(request.POST)
        validator.required = ['numeroDocumentos','nombres','apellidos','telefono', 'email']
        if validator.is_valid():
            instructor.nombres = request.POST['nombres'].upper()
            instructor.apellidos = request.POST['apellidos'].upper()
            instructor.tipoDocumento = TipoDocumento.objects.get(pk=request.POST['tipoDocumento'])
            instructor.numeroDocumento = request.POST['numeroDocumentos']
            instructor.ocupacion = Ocupacion.objects.get(pk = request.POST['ocupacion'])
            instructor.sexo = request.POST['sexo'].upper()
            instructor.telefono = request.POST['telefono']
            instructor.email = request.POST['email']
            instructor.entidad = Entidad.objects.get(pk = request.POST['entidad'])
            instructor.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/instructor_create')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/instructor_create')
    return render(request,'instructor_create.html',{'instructor':instructor,'tipoDocumento':tipoDocumento,'ocupaciones':ocupaciones,'sexos':sexos,'entidades':entidades,'edit':edit})

@login_required(login_url="/")
def usuario_create(request):
    create = True
    perfiles = Group.objects.all()
    sedes = Sede.objects.all()
    if request.method == 'POST':
        validator = UsuarioValidator(request.POST)
        validator.required = ['numeroDocumento','nombres','apellidos','email','psw','rpsw']
        if validator.is_valid():
            usuario = User()
            usuario.first_name = request.POST['nombres'].upper()
            usuario.last_name = request.POST['apellidos'].upper()
            usuario.username = request.POST['numeroDocumento']
            usuario.password = make_password(request.POST['psw'])
            usuario.email = request.POST['email']
            usuario.sede = Sede.objects.get(pk = request.POST['sede'])
            usuario.save()
            usuario.groups.add(Group.objects.get(pk = request.POST['perfil']))
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/usuario_create')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/usuario_create')
    return render(request,'usuario_create.html',{'perfiles':perfiles,'sedes':sedes,'create':create})

@login_required(login_url="/")
def usuario_consulta(request):
    query = True
    if request.method == 'POST':
        validator = ConsultaUsuarioValidator(request.POST)
        validator.required = ['documento']
        if validator.is_valid():
            usuario = User.objects.get(username = request.POST['documento'])
            return HttpResponseRedirect('/asistencia/usuario_edit/%s' %usuario.id)
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/usuario_consulta',{'query':query})
    return render(request,'usuario_create.html',{'query':query})

@login_required(login_url="/")
def usuario_edit(request, id_usuario):
    edit = True
    perfiles = Group.objects.all()
    sedes = Sede.objects.all()
    usuario = User.objects.get(pk = id_usuario)
    if request.method == 'POST':
        validator = UsuarioEditValidator(request.POST)
        validator.required = ['numeroDocumento','nombres','apellidos','email']
        if validator.is_valid():
            usuario.first_name = request.POST['nombres'].upper()
            usuario.last_name = request.POST['apellidos'].upper()
            usuario.username = request.POST['numeroDocumento']
            usuario.email = request.POST['email']
            usuario.sede = Sede.objects.get(pk = request.POST['sede'])
            usuario.save()
            usuario.groups.through.objects.filter(user_id=usuario.id).delete()
            usuario.groups.add(Group.objects.get(pk = request.POST['perfil']))
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/usuario_consulta')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/usuario_consulta')
    return render(request,'usuario_create.html',{'usuario':usuario,'perfiles':perfiles,'sedes':sedes,'edit':edit})

@login_required(login_url="/")
def usuario_password(request, id_usuario):
    pswd = True
    usuario = User.objects.get(pk = id_usuario)
    if request.method == 'POST':
        validator = UsuarioPasswordValidator(request.POST)
        validator.required = ['psw','rpsw']
        if validator.is_valid():
            usuario.password = make_password(request.POST['psw'])
            usuario.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/usuario_consulta')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/usuario_password/%s'%usuario.id)
    return render(request,'usuario_create.html',{'usuario':usuario, 'pswd':pswd})

@login_required(login_url="/")
def curso_create(request):
    sedes = Sede.objects.all()
    tipos = Tipo.objects.all()
    instructores = Instructor.objects.all()
    entidades = Entidad.objects.all().order_by('entidad')
    if request.method == 'POST':
        validator = CursoValidator(request.POST)
        validator.required = ['nombre','duracion' ]
        if validator.is_valid():
            curso = Curso()
            curso.curso = request.POST['nombre'].upper()
            curso.duracion = request.POST['duracion'].upper()
            curso.instructor = Instructor.objects.get(pk=request.POST['instructor'])
            curso.sede = Sede.objects.get(pk = request.POST['sede'])
            curso.entidad = Entidad.objects.get(pk = request.POST['entidad'])
            curso.tipo = Tipo.objects.get(pk = request.POST['tipo'])
            curso.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/curso_create')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/curso_create')
    return render(request,'cursos/curso_create.html',{'sedes':sedes,'entidades':entidades,'tipos':tipos,'instructores':instructores})

@login_required(login_url="/")
def servicio_create(request):
    sedes = Sede.objects.all()
    if request.method == 'POST':
        validator = ServicioValidator(request.POST)
        validator.required = ['nombre']
        if validator.is_valid():
            servicio = Servicio()
            servicio.servicio = request.POST['nombre'].upper()
            servicio.sede = Sede.objects.get(pk = request.POST['sede'])
            servicio.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/servicio_create')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/servicio_create')
    return render(request,'servicio_create.html',{'sedes':sedes})

@login_required(login_url="/")
def tipo_create(request):
    if request.method == 'POST':
        validator = TipoValidator(request.POST)
        validator.required = ['nombre']
        if validator.is_valid():
            servicio = Tipo()
            servicio.tipo = request.POST['nombre'].upper()
            servicio.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/tipo_create')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/tipo_create')
    return render(request,'tipo_create.html',)

@login_required(login_url="/")
def registro(request):
    servicios = Servicio.objects.all()
    tipos = Tipo.objects.all()
    cursos = Curso.objects.all()
    if request.method == 'POST':
        validator = RegistroValidator(request.POST)
        validator.required = ['numeroDocumento']
        if validator.is_valid():
            registro = Asistencia()
            registro.persona = Persona.objects.get(numeroDocumento = request.POST['numeroDocumento'])
            registro.servicio = Servicio.objects.get(pk = request.POST['servicio'])
            registro.tipo = Tipo.objects.get(pk = request.POST['tipo'])
            if request.POST['curso'] != '':
                asist = Asistencia.objects.filter(curso_id=request.POST['curso'], fecha__startswith =datetime.datetime.now().date())
                if asist.count() != 0:
                    messages.warning(request,'Ya se tomo asistencia para el curso de por el día de hoy!!!!!!!!!!')
                    return HttpResponseRedirect('/asistencia/registro')
                registro.curso = Curso.objects.get(pk = request.POST['curso'])
            registro.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/registro')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/registro')
    return render(request,'registro.html',{'servicios':servicios,'tipos':tipos,'cursos':cursos})

@login_required(login_url="/")
def curso_list(request):
    cursos = Curso.objects.all()
    return render(request,'cursos/curso_list.html',{'cursos':cursos})

@login_required(login_url="/")
def curso_inscribe(request):
    cursos = Curso.objects.all()
    if request.method == 'POST':
        validator = InscribeCursoValidator(request.POST)
        validator.required = ['numeroDocumento']
        if validator.is_valid():
            registro = PersonaCurso()
            registro.persona = Persona.objects.get(numeroDocumento = request.POST['numeroDocumento'])
            registro.curso = Curso.objects.get(pk = request.POST['curso'])
            registro.save()
            messages.success(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/curso_inscribe')
        else:
            messages.warning(request,validator.getMessage())
            return HttpResponseRedirect('/asistencia/curso_inscribe')
    return render(request,'cursos/curso_inscribe.html',{'cursos':cursos})

@login_required(login_url="/")
def curso_persona(request, id_curso):
    curso_list = Curso.objects.get(pk = id_curso)
    cso = curso_list.persona_set.all().order_by('numeroDocumento')
    paginator = Paginator(cso,15)
    page = request.GET.get('page')
    curso = paginator.get_page(page)
    return render(request,'cursos/curso_persona.html',{'curso':curso,'curso_list':curso_list})

@login_required(login_url="/")
def curso_asistencia(request, id_curso):
    curso = Curso.objects.get(pk = id_curso)
    if request.method == 'POST':
        asist = Asistencia.objects.filter(curso_id=id_curso, fecha__startswith =datetime.datetime.now().date())
        if asist.count() != 0:
            messages.warning(request,'Ya se tomo asistencia para el curso de %s por el día de hoy!!!!!!!!!!'%curso.curso)
            return HttpResponseRedirect('/asistencia/curso_asistencia/%s' %id_curso)
        else:
            validator = AsisteCursoValidator(request.POST)
            validator.required = ['asiste']
            if validator.is_valid():
                lista = request.POST.getlist('asiste')
                for i in lista:
                    asistencia = Asistencia()
                    asistencia.persona = Persona.objects.get(pk = i)
                    asistencia.curso = Curso.objects.get(pk=curso.id)
                    asistencia.save()
                messages.success(request,validator.getMessage())
                return HttpResponseRedirect('/asistencia/curso_asistencia/%s' %id_curso)
            else:
                messages.warning(request,validator.getMessage())
                return HttpResponseRedirect('/asistencia/curso_asistencia/%s' %id_curso)
    return render(request,'cursos/curso_asistencia.html',{'curso':curso})

@login_required(login_url="/")
def barrioAjax(request):
    barrioN = request.GET['barrio']
    ciudad = request.GET['ciudad']
    try:
        if Barrio.objects.filter(barrio = request.GET['barrio'], ciudad=ciudad).exists():
            return HttpResponse(json.dumps({"mensaje":"EL BARRIO %s YA EXISTE" %request.GET['barrio']}), content_type='application/json', status = 500)
        else:
            barrio = Barrio()
            barrio.barrio = barrioN.upper()
            barrio.ciudad = Ciudad.objects.get(pk=ciudad)
            barrio.save()
            barrios = Barrio.objects.filter(ciudad=ciudad).order_by('barrio')
            dat = serializers.serialize('json', barrios, fields=('barrio'))
            return HttpResponse(dat, content_type='application/json')
    except:
        return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json', status = 500)
    return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json')

@login_required(login_url="/")
def personaAjax(request):
    documento = request.GET['documento']
    try:
        persona = Persona.objects.get(numeroDocumento=documento)
        data = serializers.serialize('json', [persona], fields=('nombres','apellidos'))
        return HttpResponse(data, content_type='application/json')
    except Persona.DoesNotExist:
        return HttpResponse(json.dumps({}), content_type='application/json')

@login_required(login_url="/")
def personaCursoAjax(request):
    documento = request.GET['documento']
    cursoId = PersonaCurso.objects.filter(persona = Persona.objects.get(numeroDocumento=documento))
    data = serializers.serialize('json', cursoId, fields=('curso'))
    return HttpResponse(data, content_type='application/json')

@login_required(login_url="/")
def instructorAjax(request):
    documento = request.GET['documentos']
    try:
        instructor = Instructor.objects.get(numeroDocumento=documento)
        data = serializers.serialize('json', [instructor], fields=('nombres','apellidos'))
        return HttpResponse(data, content_type='application/json')
    except Instructor.DoesNotExist:
        return HttpResponse(json.dumps({}), content_type='application/json')

@login_required(login_url="/")
def ciudadesAjax(request):
    id_departamento = request.GET['id']
    ciudad = Ciudad.objects.filter(departamento__id=id_departamento).order_by('ciudad')
    data = serializers.serialize('json', ciudad, fields=('ciudad','codigo'))
    return HttpResponse(data, content_type='application/json')

@login_required(login_url="/")
def barrioCiudadAjax(request):
    id_ciudad = request.GET['id']
    barrio = Barrio.objects.filter(ciudad__id=id_ciudad).order_by('barrio')
    data = serializers.serialize('json', barrio, fields=('barrio','codigo'))
    return HttpResponse(data, content_type='application/json')

@login_required(login_url="/")
def entidadAjax(request):
    entidadN = request.GET['entidadN']
    try:
        if Entidad.objects.filter(entidad = request.GET['entidadN']).exists():
            return HttpResponse(json.dumps({"mensaje":"LA ENTIDAD %s YA EXISTE" %request.GET['entidad']}), content_type='application/json', status = 500)
        else:
            entidad = Entidad()
            entidad.entidad = entidadN.upper()
            entidad.save()
            entidades = Entidad.objects.all().order_by('entidad')
            dat = serializers.serialize('json', entidades, fields=('entidad'))
            return HttpResponse(dat, content_type='application/json')
    except:
        return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json', status = 500)
    return HttpResponse(json.dumps({"mensaje":"Error"}), content_type='application/json')
