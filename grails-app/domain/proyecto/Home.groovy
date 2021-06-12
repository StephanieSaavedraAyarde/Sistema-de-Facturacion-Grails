package proyecto

class Home {
	
	Integer id
	String nombreServicio
	String nombreCliente
	String nombreEmpleado
	String precio
	Integer cantidadTrabajadores
	String fecha
	String formaPago

	static belongsTo = [nombreServicio : Servicio, nombreCliente : Cliente, nombreEmpleado : Empleado, formaPago : FormaPago]

    static constraints = {
    }
}
