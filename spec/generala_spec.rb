require_relative "../lib/generala.rb"

describe "Generala" do
	it "se inicia la partida" do
		partida = Generala.new
	end
	
	it "carga valor en el primer dado jugador 1" do
		partida = Generala.new
		retorno = partida.tirada 0
		retorno[0].should be_between(1,6) 
	end

	it "carga valor en el ultimo dado jugador 1" do
		partida = Generala.new
		retorno = partida.tirada 0
		retorno[4].should be_between(1,6) 
	end

	it "total suma de dados jugador 1" do
		partida = Generala.new
		retorno = partida.tirada 0
		partida.obtenerPuntajeJugador1.should be_between(5,30)
	end

	it "Gano Jugador 1" do
		partida = Generala.new
		partida.tirada 0
		partida.tirada 0
		partida.obtenerGanador.should == "Ganador Jugador 1"
	end

	it "Gano Jugador 2" do
		partida = Generala.new
		partida.tirada 1
		partida.tirada 1
		partida.obtenerGanador.should == "Ganador Jugador 2"
	end

	it "Empate" do
		partida = Generala.new
		partida.obtenerGanador.should == "Empate"
	end

	it "Jugador 1 elige dado 1 " do
		partida = Generala.new
		retorno = partida.tirada 0
		@valordado1 = retorno[0].to_s
		partida.setValorDadoElegidos(0,true)
		retorno = partida.tirada 0
		retorno[0].to_s.should == @valordado1
	end

	it "Jugador 1 elige dado 1 ternima su jugada y se formatea dados elegidos" do
		partida = Generala.new
		retorno = partida.tirada 0
		@valordado1 = retorno[0].to_s
		partida.setValorDadoElegidos(0,true)
		retorno = partida.tirada 0
		partida.formatearelegidos
		elegidos = partida.getValorDadoElegidos
		elegidos[0].to_s.should == "false"
	end


end
