require ('ahorcado')
describe Ahorcado do
	it "deberia iniciar con la palabra ELEFANTE" do
		ahorcado = Ahorcado.new
		ahorcado.getPalabra.should=="ELEFANTE"
	end
	it "deberia devolver 1 si envio letra E" do
		ahorcado = Ahorcado.new
		ahorcado.getBuscarLetra("E").should==1
	end
	it "deberia devolver true si Acertadas = 8" do
		ahorcado = Ahorcado.new
		ahorcado.sumarAcertada
		ahorcado.sumarAcertada
		ahorcado.sumarAcertada
		ahorcado.sumarAcertada
		ahorcado.sumarAcertada
		ahorcado.sumarAcertada
		ahorcado.sumarAcertada
		ahorcado.sumarAcertada
		ahorcado.finJuego.should==1
	end
	it "deberia devolver 3 si envio la letra E" do
		ahorcado = Ahorcado.new
		ahorcado.getNroLetras("E").should==3
	end
	
	it "deberia mostrar vector ['E',nil,'E',nil,nil,nil,nil,'E'] cuando busque la letra E" do
		ahorcado = Ahorcado.new
		ahorcado.getBuscarLetra("E")
		ahorcado.getObtenerLetrasAdivinadas.should==["E",nil,"E",nil,nil,nil,nil,"E"]
	end
	
	it "deberia mostrar Ganaste :) si envio toda la palabra ELEFANTE" do
		ahorcado = Ahorcado.new
		ahorcado.getBuscarLetra("E")
		ahorcado.getBuscarLetra("L")
		ahorcado.getBuscarLetra("F")
		ahorcado.getBuscarLetra("A")
		ahorcado.getBuscarLetra("N")
		ahorcado.getVerificarPalabra("T").should=="Ganaste :)"
	end
end
