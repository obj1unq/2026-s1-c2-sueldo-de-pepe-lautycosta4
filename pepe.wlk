import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	
	method setCategoria(_categoria) 
	{ categoria = _categoria }

	method setBonoResultado(_bonoResultado) 
	{ bonoResultado = _bonoResultado }
	
	method setBonoPresentismo(_bonoPresentismo) 
	{ bonoPresentismo = _bonoPresentismo }

	method setCantidadDeFaltas(_cantidadDeFaltas) 
	{ cantidadDeFaltas = _cantidadDeFaltas }
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto() 
			/* + el bono por presentismo */
			+ bonoPresentismo.monto(self)
			/* + el bono por resultado */
			+ bonoResultado.monto(self)
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
}
