
object gerente {
	method neto() { return 15000 } 
}

object cadete {
	method neto() { return 20000 } 
}

object vendedor {
  const netoBase = 16000
  var muchasventas= false
  
  method neto(){
	if (muchasventas){
		return netoBase * 1.25
	} else 
	return netoBase
  } 
	
	method desactivarAumentoPorMuchasVentas() {
		muchasventas = false
	}
  
	method activarAumentoPorMuchasVentas() {
		muchasventas = true
	}

 }

object medioTiempo{
	var categoriaBase= gerente

	method setCategoriaBase(_categoria) { categoriaBase=_categoria }

	method neto() { return categoriaBase.neto() / 2 }

}