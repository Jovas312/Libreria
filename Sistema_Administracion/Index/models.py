from django.db import models

# Create your models here.
class Autores(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)

    def __str__(self):
        return f"Autor: {self.nombre} {self.apellido}"

class Categorias(models.Model):
    categoria = models.CharField(max_length=100)

    def __str__(self):
        return f"Categoria: {self.categoria}"

class Libros(models.Model):
    titulo = models.CharField(max_length=100)
    autor = models.ForeignKey(Autores, on_delete=models.SET_NULL, null=True)
    año = models.IntegerField()
    editor = models.CharField(max_length=100)
    idioma = models.CharField(max_length=100)
    descripcion = models.TextField()
    disponibles = models.BooleanField()
    precio = models.IntegerField()
    categoria = models.ForeignKey(Categorias, on_delete=models.SET_NULL, null=True)
    imagen = models.ImageField(upload_to='productos', null=True)

    def __str__(self):
        return f"""Titulo {self.titulo}
        Autor: {self.autor}
        Año: {self.año}
        Editor: {self.editor}
        Idioma: {self.idioma}
        Descripción: {self.descripcion}
        Libros disponibles: {self.disponibles}
        Precio: {self.precio}
        Categoria: {self.categoria}
        Imagen: {self.imagen}"""