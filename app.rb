require 'sinatra'

get '/' do
   erb :generala_view
end

get '/j1' do
   erb :generala_view
	@dadosJugador1 = "4"
end
