package tienda

import java.util.Date;

class Compra {
	
	//relacion compra-producto
	//muchos a muchos
	static hasMany = [productos:Producto]
	/*
	 * Cons esta propiedad indicamos a Grails que debe mapear esta relacion a
	 * la base de datos.
	 */

	
	//relacion cliente-compra
	//1:N
	static belongsTo = [cliente:Cliente]
	
	/*
	 * indica una relacion de 1:N, entre Cliente y Compra, es decir que un cliente
	 * puede tener N compras
	 */
	
	
	Date fecha
	Float cantidadTotal
	int codigo
	
	
    static constraints = {
		cantidadTotal(min:0f)
		codigo(blank:false,min:5)
    }
}
