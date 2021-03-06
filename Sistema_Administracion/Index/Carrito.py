from django.shortcuts import redirect


class Carrito:
    def __init__(self, request):
        self.request = request
        self.session = request.session
        carrito = self.session.get("carrito")
        if not carrito:
            self.session["carrito"] = {}
            self.carrito = self.session["carrito"]
        else:
            self.carrito = carrito

    def agregar(self, libro):
        id = str(libro.id)
        if id not in self.carrito.keys():
            self.carrito[id] = {
                "libro_id": libro.id,
                "nombre": libro.titulo,
                "acumulado": libro.precio,
                "cantidad": 1,
            }       
        else:
            self.carrito[id]["cantidad"] += 1
            self.carrito[id]["acumulado"] += libro.precio
        self.guardar_carrito()

    def guardar_carrito(self):
        self.session["carrito"] = self.carrito
        self.session.modified = True

    def elimiar(self, libro):
        id = str(libro.id)
        if id in self.carrito:
            del self.carrito[id]
            self.guardar_carrito()

    def restar(self, libro):
        id = str(libro.id)
        if id in self.carrito.keys():
            self.carrito[id]["cantidad"] -= 1
            self.carrito[id]["acumulado"] -= libro.precio
            if self.carrito[id]["cantidad"] <= 0:
                self.elimiar(libro)
                self.guardar_carrito()
    
    def limpiar(self):
        self.session["carrito"] = {}
        self.session.modified = True