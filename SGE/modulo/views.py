from django.shortcuts import render
from django.http import HttpResponse
from django.http import FileResponse

import io
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas
from reportlab.lib.utils import ImageReader
# Create your views here.

def index(request):
    return HttpResponse("la casa")

def generate(request):
    #Indicamos el tipo de contenido a devolver, en este caso un pdf
    response = HttpResponse(content_type='application/pdf')
    #La clase io.BytesIO permite tratar un array de bytes como un fichero binario, se utiliza como almacenamiento temporal
    buffer = io.BytesIO()
    
    p = canvas.Canvas(buffer)
    #Con show page hacemos un corte de página para pasar a la siguiente    
    logo = ImageReader('file:///J:\Proyecto_is\SGE\modulo')
    p.drawImage(logo, 25, 525, mask='auto')
    
    p.drawString(275, 520, "Reporte")
    p.showPage()
    p.save()
    buffer.seek(0)
    return FileResponse(buffer, as_attachment=True, filename='reporte.pdf')