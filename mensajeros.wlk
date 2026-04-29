import destinos.*
import paquetes.*

object roberto{
    var peso = 0
    method puedeEntregarPaquete(paquete) {
      return paquete.puedeLLevarlo(self) && paquete.estaPago()
    }
    method pesoTotal(pesoRoberto, vehiculo) {
      peso = pesoRoberto + vehiculo.peso()
    }
    method verPesoTotal() {
        return peso
    }
    method puedeLLamar() {
      return false
    }
}

object chuckNorris {
    method puedeEntregarPaquete(paquete) {
      return paquete.puedeLLevarlo(self) && paquete.estaPago()
    }
    method verPesoTotal() {
        return 80
    }
    method puedeLLamar() {
      return true
    }
}

object neo {
    var credito = 0
    method puedeEntregarPaquete(paquete) {
      return paquete.puedeLLevarlo(self) && paquete.estaPago()
    }
    method comprarCredito() {
        credito += 10
    }
    method verPesoTotal() {
        return 0
    }
    method puedeLLamar() {
        return credito > 0
    }
}

object ironMan{
    method puedeEntregarPaquete(paquete) {
      return paquete.puedeLLevarlo(self) && paquete.estaPago()
    }
    method verPesoTotal() {
        return 150
    }
    method puedeLLamar() {
        return true
    }
}

object bicicleta {
    method peso() {
        return 5
  }
}

object camion {
    const peso = 1000 + cantidadAcoplados * 500
    var cantidadAcoplados = 0
    method peso() {
        return peso
  }
    method cantidadAcoplados(cantidad) {
        cantidadAcoplados = cantidad
    }
}