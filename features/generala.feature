#generala.feature

Feature: Generala

Scenario: Pantalla Inicial
	Given  Entro a la aplicacion
	Then La pagina dice "GENERALA 1.0"

Scenario: Tira dado Jugador
	Given  Entro a la aplicacion
	When Tira dado Jugador
	Then La pagina dice "4"


