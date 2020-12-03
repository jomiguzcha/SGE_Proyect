from django.contrib import admin
from .models import Evento
from .models import SubEvento
from .models import Actividade
from .models import Ambiente
from .models import Paquete
from .models import Reporte

# Register your models here.

#RF-13
class EventosAdmin(admin.ModelAdmin):
    fields = ['id','nombre', 'fecha_inicio','fecha_final','estado']
    list_display = ("nombre", "fecha_inicio","fecha_final",'estado')
    search_fields = ("nombre__startswith", )
    def has_delete_permission(self, request, obj=None):
        return False
    """list_filter = ("fecha_inicio","fecha_final")"""
    
#RF-14
class SubeventosAdmin(admin.ModelAdmin):
    fields = ['id','id_evento','nombre', 'ambiente','estado','fecha_inicio','fecha_final']
    list_display = ("id_evento","nombre", "ambiente","fecha_inicio","fecha_final","estado")
    search_fields = ("nombre__startswith", )
    def has_delete_permission(self, request, obj=None):
        return False
        
#RF-15
class ActividadesAdmin(admin.ModelAdmin):
    fields = ['id','id_sub_evento','nombre','ponente','fecha','hora_inicio','hora_final']
    list_display = ("id_sub_evento","nombre","ponente","fecha","hora_inicio","hora_final")
    search_fields = ("nombre__startswith", )
    def has_delete_permission(self, request, obj=None):
        return False
        
class AmbientesAdmin(admin.ModelAdmin):
    fields = ['id','nombre', 'lugar','cupos']
    list_display = ("nombre", "lugar","cupos")
    search_fields = ("nombre__startswith", )

class PaquetesAdmin(admin.ModelAdmin):
    fields = ['id','evento','categorizacion', 'promociones','categoria','precio']
    list_display = ("evento","categorizacion", "promociones","categoria","precio")
    
class ReportesAdmin(admin.ModelAdmin):
    fields = ['id','evento','tipos']
    list_display = ("evento","tipos")

#RF-01,#RF-03
admin.site.register(Evento,EventosAdmin)
#RF-02,#RF-04
admin.site.register(SubEvento,SubeventosAdmin)
#RF-09,#RF-10,#RF-11
admin.site.register(Actividade,ActividadesAdmin)
#RF-06,#RF-07
admin.site.register(Ambiente,AmbientesAdmin)
#RF-17,#RF-18,"RF-20
admin.site.register(Paquete,PaquetesAdmin)
admin.site.register(Reporte,ReportesAdmin)