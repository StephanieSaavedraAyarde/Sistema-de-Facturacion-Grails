package proyecto

class ServicioController {

    ServicioService servicioService

    def index() {
        def response = servicioService.list(params)
        [servicioList: response.list, total:response.count]
    }

    def create() {
        [servicio: flash.redirectParams]
    }

    def save() {
        def response = servicioService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage(g.message(code: "Error al guardar"), false)
            redirect(controller: "servicio", action: "create")
        }else{
            flash.message = AppUtil.infoMessage(g.message(code: "Guardado correctamente"))
            redirect(controller: "servicio", action: "index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [servicio: flash.redirectParams]
        } else {
            def response = servicioService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
                redirect(controller: "servicio", action: "index")
            } else {
                [servicio: response]
            }
        }
    }

    def update() {
        def response = servicioService.getById(params.id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "servicio", action: "index")
        }else{
            response = servicioService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "Error en la Modificacion"), false)
                redirect(controller: "servicio", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Actualizado"))
                redirect(controller: "servicio", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = servicioService.getById(id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "servicio", action: "index")
        }else{
            response = servicioService.delete(response)
            if (!response){
                flash.message = AppUtil.infoMessage(g.message(code: "Error al eliminar"), false)
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Eliminado"))
            }
            redirect(controller: "servicio", action: "index")
        }
    }

}
