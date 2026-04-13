/*- **Roque**, que en lugar de asignársele una categoría, se establece un neto de 28000 pesos. <br> 
	El sueldo se calcula como ```neto + bono por resultados + 9000 pesos```. <br> 
	Para el bono por resultados, se usan las mismas opciones que para Pepe. */

import categorias.*
import bonos.*

object roque {
	var neto = 28000
	var bonoResultado = bonoNulo
	
    method bonoResultado(){ return bonoResultado }

	method setBonoResultado(_bonoResultado) 
	{ bonoResultado = _bonoResultado }

	method sueldoNeto() { return neto }
	
	method sueldo() {
		return self.sueldoNeto()
			+ bonoResultado.monto(self)
			+ 9000
	}
	
}