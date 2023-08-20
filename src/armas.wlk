object ballesta {
	var flechas = 10
	
	method usar(){
		flechas -= 1
	}
	
	method estaCargada(){ return flechas > 0  }
	
	method potencia(){ return 4 }
}

object jabalina {
	var cargada = true
	
	method usar(){
		cargada = false
	}
	
	method estaCargada() { return cargada }
	
	method potencia() { return 30 }
}