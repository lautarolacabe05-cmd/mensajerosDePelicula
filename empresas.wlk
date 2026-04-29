import paquetes.*
import mensajeros.*
import destinos.*


object mensajeria {
  const mensajeros = []
  method listaDeMensajeros() {
    return mensajeros
  }
  method contratarMensajero(mensajero) {
    mensajeros.add(mensajero)
  }
  method despedirMensajero(mensajero) {
    mensajeros.remove(mensajero)
  }
  method despedirATodos(){
    mensajeros.clear()
  }
  method mensajeriaEsGrande(){
    return mensajeros.size() > 2
  }
 method puedePrimerMensajeroEntregarPaquete(paquete, destino) {
   return mensajeros.first().puedeEntregarPaquete(paquete, destino)
 }
 method pesoDelUltimoMensajero() {
   return mensajeros.last().verPesoTotal()
 }
 method paquetePuedeSerEntregado(paquete) {
   mensajeros.filter(mensajeros.first().puedeEntregarPaquete(paquete, puenteBrooklyn))
 }
}