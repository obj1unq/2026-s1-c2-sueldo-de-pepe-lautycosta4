/***Ernesto**, que trabaja junto con un compañero, que puede cambiar. El neto de Ernesto es igual al de su compañero. <br> 
	Su sueldo se calcula como ```neto + bono por presentismo```. <br> 
	Para el bono por presentismo, usar las mismas opciones que para Pepe. Se sabe que Ernesto no falta nunca.*/
import categorias.*
import bonos.*
import pepe.*
import sofia.*
import roque.*

object ernesto {
    var compañero= pepe
    var bonoPresentismo = bonoNulo
    const cantidadDeFaltas = 0

    method setCompañero(_compañero)
    { compañero = _compañero }

    method cantidadDeFaltas() { return cantidadDeFaltas }

    method setBonoPresentismo(_bonoPresentismo) 
	{ bonoPresentismo = _bonoPresentismo } 

    method sueldoNeto() { return compañero.sueldoNeto() }

    method sueldo() {
        return self.sueldoNeto()
            + bonoPresentismo.monto(self)
    }
}


    