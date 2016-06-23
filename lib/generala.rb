class Generala
	def initialize
		@dados = [0,0,0,0,0]
	end

	def tirarDado
		return 1 + rand(6)
	end

	def tirada
		5.times do |i|
			@dados[i] = tirarDado
		end
		return @dados
	end

	def imprimirTirada
		"Dados Obtenidos : " + @dados.to_s
	end
end
