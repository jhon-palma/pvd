from django.urls import path
from django.conf.urls import url, include
from .views import *

app_name = 'asistencia'
urlpatterns = [
    url(r'^persona_create/$', persona_create, name='persona_create'),
    url(r'^persona_consulta/$', persona_consulta, name='persona_consulta'),
    url(r'^persona_edit/(?P<id_persona>\d+)/$', persona_edit, name='persona_edit'),
    url(r'^usuario_create/$', usuario_create, name='usuario_create'),
    url(r'^instructor_create/$', instructor_create, name='instructor_create'),
    url(r'^instructor_consulta/$', instructor_consulta, name='instructor_consulta'),
    url(r'^usuario_consulta/$', usuario_consulta, name='usuario_consulta'),
    url(r'^usuario_edit/(?P<id_usuario>\d+)/$', usuario_edit, name='usuario_edit'),
    url(r'^instructor_edit/(?P<id_instructor>\d+)/$', instructor_edit, name='instructor_edit'),
    url(r'^usuario_password/(?P<id_usuario>\d+)/$', usuario_password, name='usuario_password'),
    url(r'^curso_create/$', curso_create, name='curso_create'),
    url(r'^curso_list/$', curso_list, name='curso_list'),
    url(r'^curso_inscribe/$', curso_inscribe, name='curso_inscribe'),
    url(r'^curso_asistencia/(?P<id_curso>\d+)/$', curso_asistencia, name='curso_asistencia'),
    url(r'^curso_persona/(?P<id_curso>\d+)/$', curso_persona, name='curso_persona'),
    url(r'^servicio_create/$', servicio_create, name='servicio_create'),
    url(r'^tipo_create/$', tipo_create, name='tipo_create'),
    url(r'^registro/', registro, name='registro'),
    url(r'^barrioAjax/', barrioAjax, name='barrioAjax'),
    url(r'^entidadAjax/', entidadAjax, name='entidadAjax'),
    url(r'^barrioCiudadAjax/', barrioCiudadAjax, name='barrioCiudadAjax'),
    url(r'^personaAjax/', personaAjax, name='personaAjax'),
    url(r'^personaCursoAjax/', personaCursoAjax, name='personaCursoAjax'),
    url(r'^instructorAjax/', instructorAjax, name='instructorAjax'),
    url(r'^ciudadesAjax/', ciudadesAjax, name='ciudadesAjax'),
]
