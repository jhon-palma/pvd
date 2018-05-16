from django.contrib import admin
from django.urls import path
from django.conf.urls import url
from .views import *

app_name = 'informes'
urlpatterns = [
    url(r'^subir_soporte/$', subir_soporte, name='subir_soporte'),
    url(r'^consulta_soporte/$', consulta_soporte, name='consulta_soporte'),
    url(r'^report_sexo/$', report_sexo, name='report_sexo'),
    url(r'^report_curso/$', report_curso, name='report_curso'),
    url(r'^report_datos/$', report_datos, name='report_datos'),
    url(r'^get_genero/$', get_genero, name='get_genero'),
]
