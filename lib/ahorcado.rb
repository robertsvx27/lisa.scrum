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
			1
		else
			0
		end
	end
	def getCantidadLetras
		@palabra.length
	end
	def finJuego
		if getAcertadas==getCantidadLetras
		    true
		elsif getFallidas==@maxFallidas
			false
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
end
