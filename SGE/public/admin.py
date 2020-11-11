from django.contrib import admin
from .models import Evento

# Register your models here.

class EventosAdmin(admin.ModelAdmin):
    fields = ['id','nombre', 'fecha_inicio','fecha_final','estado']
    list_display = ("nombre", "fecha_inicio","fecha_final",'estado')
    def has_delete_permission(self, request, obj=None):
        return False
    
    """list_filter = ("fecha_inicio","fecha_final")"""

admin.site.register(Evento,EventosAdmin)