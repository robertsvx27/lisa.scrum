class Ahorcado
	def initialize
		@palabra = "ELEFANTE"
		@acertadas = 0
		@fallidas = 0
		@maxFallidas = 6
		@cantidadLetras = 0		
		@vectorPalabra = []
	end
	def setPalabra(palabra)
		@palabra=palabra.to_s.upcase
	end
	def getPalabra
		@palabra
	end
	def getBuscarLetra(letra)
		if letra == nil
			@fallidas += 1
			return 0			
		elsif @palabra.include? letra.to_s.upcase
			@acertadas += getNroLetras(letra)			
			return 1
		else
			@fallidas += 1
			return 0
		end
	end
	def getCantidadLetras
		@palabra.length
	end
	def finJuego
		if getAcertadas==getCantidadLetras
			1
		elsif getFallidas==@maxFallidas
			2
		else
			0
		end
	end
	def getAcertadas
		@acertadas
	end
	def getFallidas
		@fallidas
	end
	def sumarAcertada
		@acertadas +=1		
	end
	def sumarFallida
		@fallidas +=1		
	end
	def getMaxFallidas
		@maxFallidas
	end
	def getNroLetras(letra)
		@cantidad=0
        @vector = @palabra.split("")
		@contador=0
		for item in @vector
			if item==letra
				@cantidad +=1
				@vectorPalabra[@contador]=(letra)				
			end
			@contador +=1
		end		
		@cantidad
	end
	def getObtenerLetrasAdivinadas
		@vectorPalabra	
	end
	def getVerificarPalabra(letra)
		getBuscarLetra(letra)
		@resultado = finJuego
		@resp=""
		if @resultado == 1
			@resp="Ganaste :)"
		elsif @resultado == 2
			@resp="Perdiste ;["
		else
			@resp="Continuar"
		end			
		return @resp
	end
end
