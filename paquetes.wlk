object paquete {
    var estaPago = false
   method sumarPaga(){
    está pago = true
}
}

object paquetito {
    var destino = laMatrix
    method seleccionarDestino(destinoElegido) {
        destino = destinoElegido
    }
    method verDestino() {
        return destino
    }
  method estaPago() {
    return true
  }
  method puedeLLevarlo() {
    return true
  }
}

object paquetonViajero {
    const destinos = []
    const precio = destinos.size() * 100
    var cantidadPagada = 0
    method destinos(destino) {
        destinos.add(destino)
    }
    method verDestino() {
        return destinos
    }
    method estaPago() {
        return precio == cantidadPagada
    }
    method sumarPaga(cantidad) {
        if (cantidadPagada > precio) {
            cantidadPagada = precio
        }
        else {
            cantidadPagada += cantidad
        }
    }
    method puedeLLevarlo(mensajero) {
      return destinos.all(n => n.puedePasar(mensajero))
    }
}

object paqueteDeLujo {
    var precio = 0
    var cantidadPagada = 0
    var destino = laMatrix
    method seleccionarDestino(destinoElegido) {
        destino = destinoElegido
    }
    method verDestino() {
        return destino
    }
    method calcularPrecio(mensajero) {
      precio = mensajero.verPesoTotal() * 15
    }
    method estaPago() {
        return precio == cantidadPagada
    }
    method sumarPaga(cantidad) {
        if (cantidadPagada > precio) {
            cantidadPagada = precio
        }
        else {
            cantidadPagada += cantidad
        }
    }
}