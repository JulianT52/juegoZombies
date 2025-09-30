object zombie {
  var vida = 30
  var velocidad = 5 
  const tipo = "Corredor"
  const danio = 12

  method vida(){return vida}

  method atacar(jugador){

    if(colisionaCon(jugador) == True){

      jugador.vida() = jugador.vida() - danio
      zombie.infectar(jugador)
    }

    zombie.caerse()
  }

  method caerse(){ velocidad = 0}

  method infectar(jugador){
    jugador.estaInfectado() = True
  }

  method image() = "zombie.png"

}

object jugador{

  var velocidad = 8
  var armas = ak47
  var estaInfectado = False

  method dispararZombie(zombie){
    ak47.disparar1()
    zombie.vida() = zombie.vida() + ak47.danio()
  }

  method image() = "jugador.jpeg"

}

object ak47{

  const danio = 12
  var municion = 75
  var portador = jugador

  method danio(){return danio}
  method municion(){return municion}
  method portador(){return portador}

  method disparar1(){
    municion = municion - 1
  }

  method dispararRafaga(){
    municion = municion - 3
  }

  method image() = "ak47.png"
}