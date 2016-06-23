require 'sinatra'
require_relative "./lib/generala.rb"

get '/' do
	@@generala=Generala.new
	erb :generala_view
end

post '/j1' do
	@@generala.tirada
	@dadosJugador1 = @@generala.imprimirTirada
	erb :generala_view
end
