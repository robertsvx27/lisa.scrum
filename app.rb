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
=begin
get '/juego' do
	@@objAhorcado=Ahorcado.new()
	@letra=params[:letra]

	@acertadas=@@objAhorcado.getAcertadas()
	@fallidas=@@objAhorcado.getFallidas()
	@cantidadLetras=@@objAhorcado.getCantidadLetras()
	@maxFallidas=@@objAhorcado.getMaxFallidas()
	@imagenAhorcado="image#{@fallidas}.png"
    erb:juego
end
=end

post '/juego' do #interfaz de juego
	@accion=params[:accion]	
	@accion=@accion.to_i
	case @accion
		when 1 #registrar palabras
			@palabra_secreta=params[:palabra_secreta]
			@pista=params[:pista]
	
			@@objAhorcado=Ahorcado.new()
			@@objAhorcado.setPalabra(@palabra_secreta)
			@@objAhorcado.setPista(@pista)
			@strMensaje=@@objAhorcado.getVerificarPalabra(nil)
			@pista=""	
		when 2 #jugar
			@letra=params[:letra]
			@strMensaje=@@objAhorcado.getVerificarPalabra(@letra)	
		when 3
			@strMensaje=@@objAhorcado.getVerificarPalabra(nil)	
	end

	if @accion==3 or @@objAhorcado.getPidioPista()==1 then
		@pista=@@objAhorcado.getPista()
	end

	@palabra_secreta=@@objAhorcado.getPalabra()
	#@strMensaje=@@objAhorcado.getVerificarPalabra(@letra)

	#actualizar contadores
	@acertadas=@@objAhorcado.getAcertadas()
	@fallidas=@@objAhorcado.getFallidas()
	@cantidadLetras=@@objAhorcado.getCantidadLetras()
	@maxFallidas=@@objAhorcado.getMaxFallidas()
	@imagenAhorcado="image#{@fallidas}.png"
	erb:juego

		
end
