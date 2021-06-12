package proyecto

import grails.web.servlet.mvc.GrailsParameterMap

class EmpleadoService {

    def save(GrailsParameterMap params) {
        Empleado empleado = new Empleado(params)
        def response = AppUtil.saveResponse(false, empleado)
        if (empleado.validate()) {
            empleado.save(flush: true)
            if (!empleado.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def update(Empleado empleado, GrailsParameterMap params) {
        empleado.properties = params
        def response = AppUtil.saveResponse(false, empleado)
        if (empleado.validate()) {
            empleado.save(flush: true)
            if (!empleado.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def getById(Serializable id) {
        return Empleado.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Empleado> empleadoList = Empleado.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: empleadoList, count: empleadoList.totalCount]
    }

    def delete (Empleado empleado) {
        try {
            empleado.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
