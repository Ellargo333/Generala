require 'sinatra'
require_relative "./lib/generala.rb"

get '/' do
    
	@@generala=Generala.new
	@TotalJugador1 ="0"
	@TotalJugador2 ="0"
	erb :generala_view
end

post '/j1' do
	@@generala.tirada 0
	@dadosJugador ="Jugador 1: " + @@generala.imprimirTirada 
	@TotalJugador1 = @@generala.imprimirPuntaje 0 
	@TotalJugador2 = @@generala.imprimirPuntaje 1 
	erb :generala_view
end

post '/j2' do
	@@generala.tirada 1
	@dadosJugador = "Jugador 2: " + @@generala.imprimirTirada 
	@TotalJugador1 = @@generala.imprimirPuntaje 0 
	@TotalJugador2 = @@generala.imprimirPuntaje 1
	erb :generala_view
end
