import wollok.game.*

object corsaRojo{
	
	var image = "autitoRojo.png"
	var position = game.center()
	var toggle = false
	var lastMoveDirection 
	
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
		} else{
			position = position.down(game.height()-1)
		}
		lastMoveDirection = "arriba"
	}
	
	method moveteAbajo(){
		
		if(position.y() > 0){
			position = position.down(1)
		} else {
			position = position.up(game.height()-1)
		}
		lastMoveDirection = "abajo"
	}
	
	method moveteDerecha(){
		if(position.x() < 11){
			position = position.right(1)	
		} else{
			position = position.left(game.width()-1)
		}
		lastMoveDirection = "derecha"
	}
	
	method moveteIzquierda(){
		if(position.x() > 0){
			position = position.left(1)	
		} else{
			position = position.right(game.width()-1)
		}
		lastMoveDirection = "izquierda"
	}

	method lastMoveDirection() = lastMoveDirection
	
	method chocar(){
		if(lastMoveDirection == "arriba"){
			position = position.down(2)
		} 
		if(lastMoveDirection == "abajo"){
			position = position.up(2)
		}
		if(lastMoveDirection == "derecha"){
			position = position.left(2)
		}
		if(lastMoveDirection == "izquierda"){
			position = position.right(2)	
		}
		game.say(self,"choque")
	}
	
}

object pared{
	method image() = "paredLadrillos2.jpg" 
	
	method position() = game.at(4,4)
}