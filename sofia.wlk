import categorias.*
import bonos.*

object sofia {
  var categoria = gerente	
  var bonoResultado = bonoNulo
  var cantidadDeFaltas = 0

    method cantidadDeFaltas() { return cantidadDeFaltas }
	
	method setCategoria(_categoria) 
	{ categoria = _categoria }

	method setBonoResultado(_bonoResultado) 
	{ bonoResultado = _bonoResultado }
		
	method setCantidadDeFaltas(_cantidadDeFaltas) 
	{ cantidadDeFaltas = _cantidadDeFaltas }
    
    method incrementoDeSofia() {
        return 1.3    }

    method sueldoNeto() { 
        return categoria.neto() * self.incrementoDeSofia() }

    method sueldo() {
        return self.sueldoNeto() + bonoResultado.monto(self)
    }

}