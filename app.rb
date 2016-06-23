require 'sinatra'
require_relative "./lib/generala.rb"

get '/' do
    
	@@generala=Generala.new
	@TotalJugador1 ="0"
	@TotalJugador2 ="0"
    @@botonJugador1 = "";
	@@botonJugador2 = "disabled";
	erb :generala_view
end

post '/j1' do
	@@generala.tirada 0
	@dadosJugador ="Jugador 1: " + @@generala.imprimirTirada 
	@TotalJugador1 = @@generala.imprimirPuntaje 0 
	@TotalJugador2 = @@generala.imprimirPuntaje 1 
    @@botonJugador1 = "disabled";
	@@botonJugador2 = "";
	erb :generala_view
end

post '/j2' do
	@@generala.tirada 1
	@dadosJugador = "Jugador 2: " + @@generala.imprimirTirada 
	@TotalJugador1 = @@generala.imprimirPuntaje 0 
	@TotalJugador2 = @@generala.imprimirPuntaje 1
    @@botonJugador1 = "";
	@@botonJugador2 = "disabled";
	@GanadorGenerala = @@generala.obtenerGanador
	erb :generala_view
end
