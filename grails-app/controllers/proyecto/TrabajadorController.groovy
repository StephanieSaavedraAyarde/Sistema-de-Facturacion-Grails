package proyecto

class TrabajadorController {

    TrabajadorService trabajadorService

    def index() {
        def response = trabajadorService.list(params)
        [trabajadorList: response.list, total:response.count]
    }

    def create() {
        [trabajador: flash.redirectParams]
    }

    def save() {
        def response = trabajadorService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage(g.message(code: "Error al guardar"), false)
            redirect(controller: "trabajador", action: "create")
        }else{
            flash.message = AppUtil.infoMessage(g.message(code: "Guardado correctamente"))
            redirect(controller: "trabajador", action: "index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [trabajador: flash.redirectParams]
        } else {
            def response = trabajadorService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
                redirect(controller: "trabajador", action: "index")
            } else {
                [trabajador: response]
            }
        }
    }

    def update() {
        def response = trabajadorService.getById(params.id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "trabajador", action: "index")
        }else{
            response = trabajadorService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "Error en la Modificacion"), false)
                redirect(controller: "trabajador", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Actualizado"))
                redirect(controller: "trabajador", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = trabajadorService.getById(id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "trabajador", action: "index")
        }else{
            response = trabajadorService.delete(response)
            if (!response){
                flash.message = AppUtil.infoMessage(g.message(code: "Error al eliminar"), false)
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Eliminado"))
            }
            redirect(controller: "trabajador", action: "index")
        }
    }

}
