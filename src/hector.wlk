import wollok.game.*
import plantas.*

object hector {
	var property posicion = game.at(2,2)
	
	method imagen() = "player.png"
	
	method plantaMaiz(){
		game.addVisualIn(new Maiz(), self.posicion().clone())
		game.say(self, "mirame plantando maiz")
	}
	
	method plantaTrigo(){
		game.addVisualIn(new Trigo(), self.posicion().clone())
		game.say(self, "mirame plantando trigo")
	}
	
	method plantaTomaco(){
		game.addVisual(new Tomaco(posicion = self.posicion().clone()))
		game.say(self, "mirame plantando tomaco")
	}
	
	method regar(){
		if(game.colliders(self).isEmpty()){
			throw new Exception ("no tengo nada para regar")
		}
		else {
			game.colliders(self).forEach({planta => planta.serRegada()})
		}
	}
}




