require 'sinatra'
require './lib/ahorcado'

configure do
	enable :sessions
	@@objAhorcado=Ahorcado.new()
end

get '/' do
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

	#@bolBuscarLetra=@@objAhorcado.getBuscarLetra(@letra)

	@acertadas=@@objAhorcado.getAcertadas()
	@fallidas=@@objAhorcado.getFallidas()
	@cantidadLetras=@@objAhorcado.getCantidadLetras()
	@maxFallidas=@@objAhorcado.getMaxFallidas()

	erb:juego
end
