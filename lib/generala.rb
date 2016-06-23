class Generala
	def initialize
		@puntajesJugadores = [0, 0]
		@dados = [0,0,0,0,0]
	end
	
	def tirarDado
		return 1 + rand(6)
	end

	def tirada (jugador)
		5.times do |i|
			dadoActual = tirarDado 
			@dados[i] = dadoActual
			@puntajesJugadores[jugador] += dadoActual
		end
		return @dados
	end

	def obtenerPuntajeJugador1
		@puntajesJugadores[0]
	end

#METODOS DE SALIDA

	def imprimirTirada
		"Dados Obtenidos : " + @dados.to_s
	end

	def imprimirPuntaje (jugador)
		@puntajesJugadores[jugador].to_s
	end

end
