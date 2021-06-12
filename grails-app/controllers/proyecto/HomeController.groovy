package proyecto

class HomeController {

    HomeService homeService

    def index() {
        def response = homeService.list(params)
        [homeList: response.list, total:response.count]
    }

    def details(Integer id) {
        def response = homeService.getById(id)
        if (!response){
            redirect(controller: "home", action: "create")
        }else{
            [home: response]
        }
    }

    def create() {
        [home: flash.redirectParams]
    }

    def save() {
        def response = homeService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage(g.message(code: "Error al guardar"), false)
            redirect(controller: "home", action: "create")
        }else{
            flash.message = AppUtil.infoMessage(g.message(code: "Guardado correctamente"))
            redirect(controller: "home", action: "details")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [home: flash.redirectParams]
        } else {
            def response = homeService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
                redirect(controller: "home", action: "index")
            } else {
                [home: response]
            }
        }
    }

    def update() {
        def response = homeService.getById(params.id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "home", action: "index")
        }else{
            response = homeService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "Error en la Modificacion"), false)
                redirect(controller: "home", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Actualizado"))
                redirect(controller: "home", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = homeService.getById(id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "home", action: "index")
        }else{
            response = homeService.delete(response)
            if (!response){
                flash.message = AppUtil.infoMessage(g.message(code: "Error al eliminar"), false)
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Eliminado"))
            }
            redirect(controller: "home", action: "index")
        }
    }

}
