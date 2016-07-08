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
end
