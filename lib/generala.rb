class Generala
	def initialize
		@puntajesJugadores = [0, 0]
		@dados = [0,0,0,0,0]
		@dadoselegidos = [false,false,false,false,false]
	end
	
	def formatearelegidos
		@dadoselegidos = [false,false,false,false,false]
	end

	def setValorDadoElegidos(dado, valor)
		@dadoselegidos[dado] = valor
	end

	def getValorDadoElegidos()
		return 	@dadoselegidos
	end	

	def tirada (jugador)
		5.times do |i|
			if not (@dadoselegidos[i])
				dadoActual = 1 + rand(6) 
				@dados[i] = dadoActual
				@puntajesJugadores[jugador] += dadoActual
			end
		end
		return @dados
	end

	def obtenerPuntajeJugador1
		@puntajesJugadores[0]
	end

	def obtenerGanador
		if @puntajesJugadores[0] == @puntajesJugadores[1]
			return "Empate"
		else
			if @puntajesJugadores[0] < @puntajesJugadores[1]
				return "Ganador Jugador 2"
			else
				return "Ganador Jugador 1"
			end
		end
	end

#METODOS DE SALIDA

	def imprimirTirada
		@dados.to_s
	end

	def imprimirPuntaje (jugador)
		@puntajesJugadores[jugador].to_s
	end

end
