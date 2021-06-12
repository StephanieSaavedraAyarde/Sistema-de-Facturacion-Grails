package proyecto

import grails.web.servlet.mvc.GrailsParameterMap

class TrabajadorService {

    def save(GrailsParameterMap params) {
        Trabajador trabajador = new Trabajador(params)
        def response = AppUtil.saveResponse(false, trabajador)
        if (trabajador.validate()) {
            trabajador.save(flush: true)
            if (!trabajador.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def update(Trabajador trabajador, GrailsParameterMap params) {
        trabajador.properties = params
        def response = AppUtil.saveResponse(false, trabajador)
        if (trabajador.validate()) {
            trabajador.save(flush: true)
            if (!trabajador.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def getById(Serializable id) {
        return Trabajador.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Trabajador> trabajadorList = Trabajador.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: trabajadorList, count: trabajadorList.totalCount]
    }

    def delete (Trabajador trabajador) {
        try {
            trabajador.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
