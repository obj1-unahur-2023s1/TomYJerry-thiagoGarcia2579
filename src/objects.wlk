object tom {
	var energia = 80
	var posicion = 0 
	
	method energia() = energia
	method velocidad() = 5 + (energia/10)
	method posicion()= posicion 
	method esMasVeloz(unRaton)= self.velocidad() > unRaton.velocidad()
	method correrA(unRaton){
		energia -= 0.5 * self.velocidad() * (posicion - unRaton.posicion()).abs()
		posicion = unRaton.posicion()
	}
	
}


// Ratones:

object jerry {
	var peso = 3
	var posicion = 10  
	
	method velocidad() = 10-peso
	method posicion()= posicion 
	
}

object robotRaton{
	var posicion = 12 
	
	method velocidad()= 8
	method posicion()= posicion
}

object cocoRaton{
	var property peso = 4
	var property posicion = 7
	var property tamanoDeCola = 3
	
	method velocidad() = 6*tamanoDeCola - peso
	method peso() = peso + tamanoDeCola
}
