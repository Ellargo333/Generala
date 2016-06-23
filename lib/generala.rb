class Generala
	def initialize
		@puntosJugador1 = 0
	end
	
	def obtenerPuntosJugador1
		return @puntosJugador1
	end

	def tirarDado
		return 1 + rand(6)
	end
end
