require ('ahorcado')
describe Ahorcado do
	it "deberia iniciar con la palabra ELEFANTE" do
		ahorcado = Ahorcado.new
		ahorcado.getPalabra.should=="ELEFANTE"
	end
end
