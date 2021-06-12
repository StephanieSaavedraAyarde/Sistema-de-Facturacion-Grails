package proyecto

import grails.web.servlet.mvc.GrailsParameterMap

class HomeService {

    def save(GrailsParameterMap params) {
        Home home = new Home(params)
        def response = AppUtil.saveResponse(false, home)
        if (home.validate()) {
            home.save(flush: true)
            if (!home.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def update(Home home, GrailsParameterMap params) {
        home.properties = params
        def response = AppUtil.saveResponse(false, home)
        if (home.validate()) {
            home.save(flush: true)
            if (!home.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def getById(Serializable id) {
        return Home.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Home> homeList = Home.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: homeList, count: homeList.totalCount]
    }

    def delete (Home home) {
        try {
            home.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return true
    }
}
