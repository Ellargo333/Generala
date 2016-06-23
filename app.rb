require 'sinatra'
require_relative "./lib/generala.rb"

get '/' do
	@@generala=Generala.new
	erb :generala_view
end

post '/j1' do
	@@generala.tirada 0
	@dadosJugador ="Jugador1: " + @@generala.imprimirTirada 
	erb :generala_view
end

post '/j2' do
	@@generala.tirada 1
	@dadosJugador = "Jugador2: " + @@generala.imprimirTirada
	erb :generala_view
end
