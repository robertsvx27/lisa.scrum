class Ahorcado
	def initialize
		@palabra = "ELEFANTE"
		@acertadas = 0
		@fallidas = 0
		@maxFallidas = 6
		@cantidadLetras = 0		
	end
	def getPalabra
		@palabra
	end
	def getBuscarLetra(letra)
		if @palabra.include? letra
			@acertadas = getNroLetras(letra)			
			return 1
		else
			0
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
		for item in @vector
			if item==letra
				@cantidad +=1
			end
		end		
		@cantidad
	end
end
