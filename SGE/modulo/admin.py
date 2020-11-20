from django.contrib import admin
from .models import Evento
from .models import SubEvento
from .models import Actividade
from .models import Ambiente
from .models import Paquete

# Register your models here.

class EventosAdmin(admin.ModelAdmin):
    fields = ['id','nombre', 'fecha_inicio','fecha_final','estado']
    list_display = ("nombre", "fecha_inicio","fecha_final",'estado')
    def has_delete_permission(self, request, obj=None):
        return False
    """list_filter = ("fecha_inicio","fecha_final")"""

class SubeventosAdmin(admin.ModelAdmin):
    fields = ['id','id_evento','nombre', 'ambiente','estado','fecha_inicio','fecha_final']
    list_display = ("id_evento","nombre", "ambiente","fecha_inicio","fecha_final","estado")
    def has_delete_permission(self, request, obj=None):
        return False
        
class ActividadesAdmin(admin.ModelAdmin):
    fields = ['id','id_sub_evento','nombre','ponente','fecha','hora_inicio','hora_final']
    list_display = ("id_sub_evento","nombre","ponente","fecha","hora_inicio","hora_final")
    def has_delete_permission(self, request, obj=None):
        return False
        
class AmbientesAdmin(admin.ModelAdmin):
    fields = ['id','nombre', 'lugar','cupos']
    list_display = ("nombre", "lugar","cupos")

class PaquetesAdmin(admin.ModelAdmin):
    fields = ['id','evento','categorizacion', 'promociones','categoria','precio']
    list_display = ("evento","categorizacion", "promociones","categoria","precio")

admin.site.register(Evento,EventosAdmin)
admin.site.register(SubEvento,SubeventosAdmin)
admin.site.register(Actividade,ActividadesAdmin)
admin.site.register(Ambiente,AmbientesAdmin)
admin.site.register(Paquete,PaquetesAdmin)