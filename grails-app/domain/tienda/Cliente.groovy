package tienda

class Cliente {

	
	//relacion cliente-compra
	//1:N
	static hasMany = [compras:Compra]
	
	
	String nombre
	int cedula
	
    static constraints = {
		nombre(size:3..50)
		cedula(min:10)
			
    }
}
