require 'sinatra'
require_relative "./lib/generala.rb"

get '/' do    
	@@generala=Generala.new
	@TotalJugador1 ="0"
	@TotalJugador2 ="0"
    @@CantidadTiradas = 0
    @@botonJugador1 = ""
	@@botonJugador2 = "disabled"
	erb :generala_view
end

post '/j1' do
	
	if params["Dado1"] == "Dado1"
		@dado1 = true
	else
		@dado1 = false
	end
	if params["Dado2"] == "Dado2"
		@dado2 = true
	else
		@dado2 = false
	end
	if params["Dado3"] == "Dado3"
		@dado3 = true
	else
		@dado3 = false
	end
	if params["Dado4"] == "Dado4"
		@dado4 = true
	else
		@dado4 = false
	end
	if params["Dado5"] == "Dado5"
		@dado5 = true
	else
		@dado5 = false
	end


    @@generala.formatearelegidos
    @@generala.setValorDadoElegidos(0, @dado1) 
    @@generala.setValorDadoElegidos( 1, @dado2)
	@@generala.setValorDadoElegidos( 2, @dado3)
	@@generala.setValorDadoElegidos( 3, @dado4) 
	@@generala.setValorDadoElegidos( 4, @dado5)

	@@generala.tirada 0
	@dadosJugador1 ="Jugador 1: " 
    @tiradaJugador1 = @@generala.imprimirTirada
	@TotalJugador1 = @@generala.imprimirPuntaje 0 
	@TotalJugador2 = @@generala.imprimirPuntaje 1
	if (@@CantidadTiradas == 2)
		@@botonJugador1 = "disabled"
		@@botonJugador2 = ""
		@@CantidadTiradas = 0
	else
    	@@CantidadTiradas += 1
    end 	 

	erb :generala_view
end

post '/j2' do
    if params["Dado1"] == "Dado1"
		@dado1 = true
	else
		@dado1 = false
	end
	if params["Dado2"] == "Dado2"
		@dado2 = true
	else
		@dado2 = false
	end
	if params["Dado3"] == "Dado3"
		@dado3 = true
	else
		@dado3 = false
	end
	if params["Dado4"] == "Dado4"
		@dado4 = true
	else
		@dado4 = false
	end
	if params["Dado5"] == "Dado5"
		@dado5 = true
	else
		@dado5 = false
	end


    @@generala.formatearelegidos
    @@generala.setValorDadoElegidos(0, @dado1) 
    @@generala.setValorDadoElegidos( 1, @dado2)
	@@generala.setValorDadoElegidos( 2, @dado3)
	@@generala.setValorDadoElegidos( 3, @dado4) 
	@@generala.setValorDadoElegidos( 4, @dado5)


	@@generala.tirada 1
	@dadosJugador2 = "Jugador 2: "  
    @tiradaJugador2 = @@generala.imprimirTirada
	@TotalJugador1 = @@generala.imprimirPuntaje 0 
	@TotalJugador2 = @@generala.imprimirPuntaje 1
	if (@@CantidadTiradas == 2)
		@@botonJugador1 = ""
		@@botonJugador2 = "disabled"
		@@CantidadTiradas = 0
		@GanadorGenerala = @@generala.obtenerGanador
	else
		@@CantidadTiradas += 1
    end 
	
	erb :generala_view
end
