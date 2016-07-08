class Ahorcado
	def initialize
		@palabra = "ELEFANTE"
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
end
