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
	@accion=params[:accion]	
	@pista=params[:pista]	
	case @accion
		when 1 #registrar palabras
			@palabra_secreta=params[:palabra_secreta]
			@pista=params[:pista]

			@@objAhorcado.setPalabra(@palabra_secreta)
			@@objAhorcado.setPista(@pista)
		when 2 #jugar
			@letra=params[:letra]
			@strMensaje=@@objAhorcado.getVerificarPalabra(@letra)	
		when 3 #pedir pedir pista
			@pista=@@objAhorcado.getPista()
	end
	#@letra=params[:letra]
	#@palabra_secreta=params[:palabra_secreta]
	#@pista=params[:pista]
	#@pedir_pista=params[:pedir_pista]
	#if @palabra_secreta then
	#	@@objAhorcado.setPalabra(@palabra_secreta)
	#end
	#if @pista then
	#	@@objAhorcado.setPista(@pista)
	#	@pista=""
	#if @@objAhorcado.getPidioPista()==1 then
	#	@pista=@@objAhorcado.getPista()
	#end

	@palabra_secreta=@@objAhorcado.getPalabra()
	@strMensaje=@@objAhorcado.getVerificarPalabra(@letra)

	#actualizar contadores
	@acertadas=@@objAhorcado.getAcertadas()
	@fallidas=@@objAhorcado.getFallidas()
	@cantidadLetras=@@objAhorcado.getCantidadLetras()
	@maxFallidas=@@objAhorcado.getMaxFallidas()
	
	erb:juego

		
end
