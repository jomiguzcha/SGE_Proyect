from django.db import models
from django.contrib.postgres.fields import ArrayField

# Create your models here.

#Diagrama de Clases DC004
#<<Entidad>> Evento
class Evento(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    fecha_inicio = models.DateField(auto_now=False, auto_now_add=False)
    fecha_final = models.DateField(auto_now=False, auto_now_add=False)
    estado = models.BooleanField(default=True) #modificacion
    
    def __str__(self):
        return self.nombre
        
#Diagrama de Clases DC007
#<<Entidad>> Sub_evento
"""class SubEventos(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    ambiente = models.CharField(max_length = 80)
    estado =  models.BooleanField()
    fecha_inicio = models.DateField(auto_now=False, auto_now_add=False)
    fecha_final =  models.DateField(auto_now=False, auto_now_add=False)
    id_comite = models.ForeignKey(Comite, on_delete=models.CASCADE)
    id_evento = models.ForeignKey(Evento, on_delete=models.CASCADE)

#Diagrama de Clases DC016
#<<Entidad>> Actividades    
class Actividades(models.Model):
    id = models.IntegerField(primary_key = True)
    hora_inicio = models.DateTimeField(auto_now=False, auto_now_add=False)
    ponente = models.CharField(max_length = 80)
    nombre = models.CharField(max_length = 80)
    hora_final = models.DateTimeField(auto_now=False, auto_now_add=False)
    fecha =  models.DateField(auto_now=False, auto_now_add=False)
    id_sub_evento = models.ForeignKey(SubEventos, on_delete=models.CASCADE)

#Diagrama de Clases DC012
#<<Entidad>> Evento    
class Ambientes(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    lugar = models.CharField(max_length = 80)
    cupos = models.IntegerField(blank=True, null=True)
    id_sub_evento = models.ForeignKey(SubEventos, on_delete=models.CASCADE)

#Diagrama de Clases DC019
#<<Entidad>> Catalogos    
class Catalogos(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    materiales = ArrayField(models.CharField(max_length = 80))
    cantidad = ArrayField(models.IntegerField(blank=True, null=True))
    id_sub_evento = models.ForeignKey(SubEvento, on_delete=models.CASCADE)"""


#Diagrama de Clases DC022
#<<Entidad>> Paquete
class Paquete(models.Model):
    id = models.IntegerField(primary_key = True)
    categorizacion = ArrayField(models.CharField(max_length = 80))#modificacion
    promociones = models.CharField(max_length = 80)#modificacion
    categoria = models.CharField(max_length = 80)#modificacion
    precio = models.FloatField()#modificacion
    evento = models.ForeignKey(Evento, on_delete=models.CASCADE)

#Diagrama de Clases DC031
#<<Entidad>> Asistentes
class Asistentes(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    apellido = models.CharField(max_length = 80)
    correo = models.CharField(max_length = 80)
    codigo = models.IntegerField(blank=True, null=True)

#Diagrama de Clases DC050
#<<Entidad>> Preinscritos
class Preinscritos(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    apellido = models.CharField(max_length = 80)
    codigo = models.IntegerField(blank=True, null=True)
    correo = models.CharField(max_length = 80)
    paquete = ArrayField(models.CharField(max_length = 80))
    id_asistente = models.ForeignKey(Asistentes, on_delete=models.CASCADE)
    id_paquete = models.ForeignKey(Paquete, on_delete=models.CASCADE)

#Diagrama de Clases DC026
#<<Entidad>> Inscritos
class Inscritos(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    apellido = models.CharField(max_length = 80)
    codigo = models.IntegerField(blank=True, null=True)
    correo = models.CharField(max_length = 80)
    paquete = ArrayField(models.CharField(max_length = 80))
    id_asistente = models.ForeignKey(Asistentes, on_delete=models.CASCADE)
    id_paquete = models.ForeignKey(Paquete, on_delete=models.CASCADE)

#Diagrama de Clases DC004
#<<Entidad>> Recibo
class Recibo(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    cantidad = models.IntegerField(blank=True, null=True)
    nro_cuenta = models.IntegerField(blank=True, null=True)
    fecha = models.DateTimeField(auto_now=False, auto_now_add=False)
    id_inscrito = models.ForeignKey(Inscritos, on_delete = models.CASCADE)

#Diagrama de Clases DC051
#<<Entidad>> Ingresos
class Ingresos(models.Model):
    id = models.IntegerField(primary_key = True)
    nro_cuenta = models.IntegerField(blank=True, null=True)
    cantidad = models.IntegerField(blank=True, null=True)
    estado_pago = models.CharField(max_length = 80)
    id_evento = models.ForeignKey(Evento, on_delete=models.CASCADE)
    
#Diagrama de Clases DC028
#<<Entidad>> Egresos
class Egresos(models.Model):
    id = models.IntegerField(primary_key = True)
    nro_cuenta = models.IntegerField(blank=True, null=True)
    cantidad = models.IntegerField(blank=True, null=True)
    estado_pago = models.CharField(max_length = 80)
    encargado = models.CharField(max_length = 80)
    descripcion = models.CharField(max_length = 120)
    id_evento = models.ForeignKey(Evento, on_delete=models.CASCADE)

#Diagrama de Clases DC044
#<<Entidad>> Inscripciones
"""class Inscripciones(models.Model):
    id = models.IntegerField(primary_key = True)
    fecha_inicio = models.DateField(auto_now=False, auto_now_add=False)
    fecha_cierre = models.DateField(auto_now=False, auto_now_add=False)
    id_evento = models.ForeignKey(Evento, on_delete=models.CASCADE)

#Diagrama de Clases DC036
#<<Entidad>> Preinscripciones
class Preinscripciones(models.Model):
    id = models.IntegerField(primary_key = True)
    fecha_inicio = models.DateField(auto_now=False, auto_now_add=False)
    fecha_cierre = models.DateField(auto_now=False, auto_now_add=False)
    id_evento = models.ForeignKey(Evento, on_delete=models.CASCADE)

#Diagrama de Clases DC027
#<<Entidad>> Asistencias
class Asistencias(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    apellido = models.CharField(max_length = 80)
    codigo = models.IntegerField(blank=True, null=True)
    asistio = models.BooleanField()
    id_sub_evento = models.ForeignKey(SubEvento, on_delete=models.CASCADE)

#Diagrama de Clases DC042
#<<Entidad>> Comite
class Comite(models.Model):
    id = models.IntegerField(primary_key = True)
    lista_personal = models.CharField(max_length = 80)
    fecha_inicio = models.DateField(auto_now=False, auto_now_add=False)"""

#Diagrama de Clases DC039
#<<Entidad>> Personal    
class Personal(models.Model):
    id = models.IntegerField(primary_key = True)
    nombre = models.CharField(max_length = 80)
    apellido = models.CharField(max_length = 80)
    usuario =  models.CharField(max_length = 80)
    contraseña = models.CharField(max_length = 80)
    correo =  models.CharField(max_length = 80)
    #id_comite = models.ForeignKey(Comite, on_delete=models.CASCADE)
