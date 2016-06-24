require 'sinatra'
require_relative "./lib/generala.rb"

get '/' do    
	@@generala=Generala.new
	@TotalJugador1 ="0"
	@TotalJugador2 ="0"
    @@CantidadTiradas = 0
    @@botonJugador1 = "";
	@@botonJugador2 = "disabled";
	erb :generala_view
end

post '/j1' do
	@@generala.tirada 0
	@dadosJugador ="Jugador 1: " 
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
	@@generala.tirada 1
	@dadosJugador = "Jugador 2: "  
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
