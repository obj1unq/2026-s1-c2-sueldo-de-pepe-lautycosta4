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
	
	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto()
			+ bonoPresentismo.monto(self)
			+ bonoResultado.monto(self) 
	}
	
}
