package proyecto

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
            }
        }

        "/"(controller: "transaccion", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
