
object castillo {
	var defensa = 150
	
	method altura() = 20
	
	method recibirAtaque(potencia) {
		defensa = 0.max(defensa - potencia)
	}
	
	method otorgarUnidades() = defensa * 0.2
	
	method recibirTrabajo() { defensa = 200.min(defensa + 20) }
}

object aurora {
	var viva = true
	
	method altura() = 1
	
	method recibirAtaque(potencia){
		if ( potencia >= 10 ){
			viva = false
		}
	}
	
	method otorgarUnidades() = 15
	
	method recibirTrabajo() { }
}

object tipa {
	var altura = 8
	
	method altura() = altura
	
	method recibirAtaque(potencia){ }
	
	method otorgarUnidades() = altura * 2
	
	method recibirTrabajo() { altura += 1 }
}