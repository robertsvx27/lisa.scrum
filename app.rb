require 'sinatra'

get '/' do
    erb:inicio
end
post '/juego' do
	erb:juego
end
