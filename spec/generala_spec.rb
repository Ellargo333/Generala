require_relative "../lib/generala.rb"

describe "Generala" do
	it "se inicia la partida" do
		partida = Generala.new
	end
	
	it "carga valor en el primer dado jugador 1" do
		partida = Generala.new
		retorno = partida.tirada
		retorno[0].should be_between(1,6) 
	end

	it "carga valor en el ultimo dado jugador 1" do
		partida = Generala.new
		retorno = partida.tirada
		retorno[4].should be_between(1,6) 
	end


end
