from django.contrib import admin
from .models import Autores
from .models import Libros
from .models import Categorias


# Register your models here
class LibroAdmin(admin.ModelAdmin):
    list_display = ["titulo", "autor", "precio", "categoria"]
    list_editable = ["precio"]
    search_fields = ["nombre"]
    list_filter = ["autor", "categoria"]
    list_per_page = 30

admin.site.register(Autores)
admin.site.register(Categorias)
admin.site.register(Libros, LibroAdmin)