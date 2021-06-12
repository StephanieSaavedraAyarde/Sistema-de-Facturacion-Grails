package proyecto

import grails.web.servlet.mvc.GrailsParameterMap

class EmpresaService {

    def save(GrailsParameterMap params) {
        Empresa empresa = new Empresa(params)
        def response = AppUtil.saveResponse(false, empresa)
        if (empresa.validate()) {
            empresa.save(flush: true)
            if (!empresa.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def update(Empresa empresa, GrailsParameterMap params) {
        empresa.properties = params
        def response = AppUtil.saveResponse(false, empresa)
        if (empresa.validate()) {
            empresa.save(flush: true)
            if (!empresa.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def getById(Serializable id) {
        return Empresa.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Empresa> empresaList = Empresa.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: empresaList, count: empresaList.totalCount]
    }

}
