import wollok.game.*

object corsaRojo{
	
	var image = "autitoRojo.png"
	var position = game.center()
	var toggle = false
	
	method image() = image
	
	method position() = position

	method image(unaImagen) { 
		image = unaImagen
	}
	
	method alternarImagen(){
		toggle=!toggle
		if(toggle){
			image = "autitoVerde.png"
		}
		else{
			image = "autitoRojo.png"
		}
	}
	
	method moveteArriba(){
		if(position.y() < 9){
			position = position.up(1)
		}
		else{
			position = position.down(game.height()-1)
		}
		
	}
	
	method moveteAbajo(){
		
		if(position.y() > 0){
			position = position.down(1)
		}
		else{
			position = position.up(game.height()-1)
		}
	}
	
	method moveteDerecha(){
		position = position.right(1)
	}
	
	method moveteIzquierda(){
		position = position.left(1)
	}
}

