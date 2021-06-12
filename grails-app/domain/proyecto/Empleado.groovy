package proyecto

class Empleado extends Persona{

	Integer antiguedad
	String fechaNacimiento
	String caja

	static belongsTo = [caja : Caja]
	String toString (){
		return nombre
	}

    static constraints = {
    }
}
