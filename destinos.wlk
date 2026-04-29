import mensajeros.*
object puenteBrooklyn {
    method puedePasar(mensajero) {
      return (mensajero.verPesoTotal()).max(1000) <= 1000
    }
}

object laMatrix {
  method puedePasar(mensajero) {
    return mensajero.puedeLLamar()
  }
}