Feature: Ahorcado

Scenario: Al inicio con bienvenida
Given estoy en la pagina de inicio
Then quiero ver el mensaje "Bienvenido a Lisa.scrum"

Scenario: Luego de hacer click en boton jugar
Given estoy en la pagina de inicio
When presiono el boton "jugar"
Then quiero ver el mensaje "Jugando Lisa.scrum"

