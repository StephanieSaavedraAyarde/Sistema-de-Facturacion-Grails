package proyecto

import grails.web.servlet.mvc.GrailsParameterMap

class ServicioService {

    def save(GrailsParameterMap params) {
        Servicio servicio = new Servicio(params)
        def response = AppUtil.saveResponse(false, servicio)
        if (servicio.validate()) {
            servicio.save(flush: true)
            if (!servicio.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def update(Servicio servicio, GrailsParameterMap params) {
        servicio.properties = params
        def response = AppUtil.saveResponse(false, servicio)
        if (servicio.validate()) {
            servicio.save(flush: true)
            if (!servicio.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def getById(Serializable id) {
        return Servicio.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Servicio> servicioList = Servicio.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: servicioList, count: servicioList.totalCount]
    }

    def delete (Servicio servicio) {
        try {
            servicio.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
