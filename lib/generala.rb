class Generala
	def initialize
		@puntajesJugadores = [0, 0]
		@dados = [0,0,0,0,0]
		@dadoselegidos = [false,false,false,false,false]
		

		@puntajejugador1 = [0,0,0,0,0,0]
		@jugadasdeljugador1 = [false,false,false,false,false,false]
		@puntajejugador2 = [0,0,0,0,0,0]
		@jugadasdeljugador2 = [false,false,false,false,false,false]

		@puntajejugador = [@puntajejugador1, @puntajejugador2]
		@jugadasdeljugador = [@jugadasdeljugador1, @jugadasdeljugador2]

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
	
	def setpuntajejugador (jugador, valorelegido)
		@jugadasdeljugador[jugador][valorelegido] = true
		calculartirada(jugador,valorelegido)
		calculartotalJugador(jugador,valorelegido)	
	end
	
	def calculartotalJugador (jugador, valorelegido)
		@puntajesJugadores[jugador] +=  @puntajejugador[jugador][valorelegido]
	end


	def tirada (jugador)
		5.times do |i|
			if not (@dadoselegidos[i])
				dadoActual = 1 + rand(6) 
				@dados[i] = dadoActual
			end
		end
		return @dados
	end

	def calculartirada (jugador,valorelegido)
		@valor_aux  = 0
		5.times do |i|
			if (@dados[i] == (valorelegido + 1))
				@valor_aux += @dados[i]
			end
		end
		@puntajejugador[jugador][valorelegido] = @valor_aux
	end

	def obtenerPuntajeJugador1
		@puntajesJugadores[0]
	end

	def obtenerGanador
		if @puntajesJugadores[0] == @puntajesJugadores[1]
			return "Empate!"
		else
			if @puntajesJugadores[0] < @puntajesJugadores[1]
				return "Ganador Jugador 2!"
			else
				return "Ganador Jugador 1!"
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
