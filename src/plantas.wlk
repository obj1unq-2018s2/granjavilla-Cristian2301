import hector.*

class Maiz {
	var imagen = "corn_baby.png"
	
	method imagen() = imagen
	
	method serRegada(){
		if(imagen == "corn_baby.png"){
			imagen = "corn_adult.png"
		}
	}
}


class Trigo {
	var etapa = 0
	
	method imagen() =  "wheat_" + etapa + ".png"
	
	method serRegada(){
	 	etapa = (etapa + 1) % 4
	}
}


class Tomaco {
	var posicion
	var imagen =  "tomaco.png"
	
	method imagen() = imagen
	
	method serRegada(){
		posicion = posicion.up(1)
	}
}
