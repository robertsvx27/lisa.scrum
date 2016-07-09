require 'sinatra'
require './lib/ahorcado'

configure do
	enable :sessions
	@@objAhorcado=Ahorcado.new()
end

get '/' do
	@@objAhorcado=Ahorcado.new()
    erb:inicio
end
get '/juego' do
	@@objAhorcado=Ahorcado.new()
	@letra=params[:letra]

	@acertadas=@@objAhorcado.getAcertadas()
	@fallidas=@@objAhorcado.getFallidas()
	@cantidadLetras=@@objAhorcado.getCantidadLetras()
	@maxFallidas=@@objAhorcado.getMaxFallidas()

    erb:juego
end

post '/juego' do #interfaz de juego
	@letra=params[:letra]

	@strMensaje=@@objAhorcado.getVerificarPalabra(@letra)

	@acertadas=@@objAhorcado.getAcertadas()
	@fallidas=@@objAhorcado.getFallidas()
	@cantidadLetras=@@objAhorcado.getCantidadLetras()
	@maxFallidas=@@objAhorcado.getMaxFallidas()

	erb:juego

		
end
