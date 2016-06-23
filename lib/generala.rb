class Generala
	def initialize
		@puntajeJugador1 = 0
		@dados = [0,0,0,0,0]
	end
	
	def tirarDado
		return 1 + rand(6)
	end

	def tirada
		5.times do |i|
			dadoActual = tirarDado 
			@dados[i] = dadoActual
			@puntajeJugador1 += dadoActual 
		end
		return @dados
	end

	def obtenerPuntajeJugador1
		@puntajeJugador1
	end

#METODOS DE SALIDA

	def imprimirTirada
		"Dados Obtenidos : " + @dados.to_s
	end

	def imprimirPuntaje
		@puntajeJugador1.to_s
	end

end
