#generala.feature

Feature: Generala

Scenario: Pantalla Inicial
	Given  Entro a la aplicacion
	Then La pagina dice "GENERALA 1.0"

Scenario: Tira dado Jugador1
	Given  Entro a la aplicacion
	When Tira dado Jugador1
	Then La pagina dice "Jugador"

Scenario: Tira dado Jugador2
	Given  Entro a la aplicacion
	When Tira dado Jugador2
	Then La pagina dice "Jugador"

Scenario: Ganador Jugador
	Given  Entro a la aplicacion
	When Tira dado Jugador2
	Then La pagina dice "Ganador Jugador"






