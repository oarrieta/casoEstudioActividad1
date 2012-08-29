package tienda

class Producto {
	
	//relacion compra-producto
	//muchos a muchos
	static hasMany = [compras:Compra]
	static belongsTo = Compra
	
	
	
	int codigo
	String nombre
	Float precio
	boolean productoElectrico
	boolean mueble

    static constraints = {
		nombre(blank:false,size:5..50)
		codigo(blank:false,min:5)
		
		
    }
}
