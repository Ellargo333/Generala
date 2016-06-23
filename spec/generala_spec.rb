require_relative "../lib/generala.rb"

describe "Generala" do
	it "se inicia la partida" do
		partida = Generala.new
		partida.obtenerPuntosJugador1.should == 0
	end
	
	it "tirar un dado entre el 1 y el 6" do
		partida = Generala.new
		partida.tirarDado.should be_between(1, 6)
	end

end
