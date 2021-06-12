package proyecto

class Empresa {

	Integer id
	String nombreEmpresa
	String nit
	String nombreResponsable
	String direccion
	String numeroTelefono
	String rubro

	static hasMany = [servicio : Servicio, empleado : Empleado]

    static constraints = {
    }
}
