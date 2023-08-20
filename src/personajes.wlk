import armas.*
import elementos.*

object luisa {
	var personajeActivo 
	
	method elegirPersonaje(personaje) { personajeActivo = personaje }
	
	method aparece(elemento) {
		personajeActivo.encontrar(elemento)
	}
}

object floki {
	var arma
	
	method cambiarArma(unArma){
		arma = unArma
	}
	
	method encontrar(elemento){
		if (  arma.estaCargada() ) {
			elemento.recibirAtaque( arma.potencia() )
			arma.usar()
		}
	}
}

object mario {
	
	var cantidadRecolectada = 0
	var esFeliz = false 
	
	method encontrar(elemento){
		
		elemento.recibirTrabajo()
		cantidadRecolectada += elemento.otorgarUnidades()
		esFeliz = cantidadRecolectada >= 50 or elemento.altura() >= 1
	}
	
	method esFeliz() = esFeliz
}