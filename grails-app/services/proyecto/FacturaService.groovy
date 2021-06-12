package proyecto

import grails.web.servlet.mvc.GrailsParameterMap

class FacturaService {

    def save(GrailsParameterMap params) {
        Factura factura = new Factura(params)
        def response = AppUtil.saveResponse(false, factura)
        if (factura.validate()) {
            factura.save(flush: true)
            if (!factura.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def update(Factura factura, GrailsParameterMap params) {
        factura.properties = params
        def response = AppUtil.saveResponse(false, factura)
        if (factura.validate()) {
            factura.save(flush: true)
            if (!factura.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def getById(Serializable id) {
        return Factura.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Factura> facturaList = Factura.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: facturaList, count: facturaList.totalCount]
    }

    def delete (Factura factura) {
        try {
            factura.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
