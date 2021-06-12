package proyecto

class ClienteController {

    ClienteService clienteService

    def index() {
        def response = clienteService.list(params)
        [clienteList: response.list, total:response.count]
    }

    def create() {
        [cliente: flash.redirectParams]
    }

    def save() {
        def response = clienteService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage(g.message(code: "Error al guardar"), false)
            redirect(controller: "cliente", action: "create")
        }else{
            flash.message = AppUtil.infoMessage(g.message(code: "Guardado correctamente"))
            redirect(controller: "cliente", action: "index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [cliente: flash.redirectParams]
        } else {
            def response = clienteService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
                redirect(controller: "cliente", action: "index")
            } else {
                [cliente: response]
            }
        }
    }

    def update() {
        def response = clienteService.getById(params.id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "cliente", action: "index")
        }else{
            response = clienteService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "Error en la Modificacion"), false)
                redirect(controller: "cliente", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Actualizado"))
                redirect(controller: "cliente", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = clienteService.getById(id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "cliente", action: "index")
        }else{
            response = clienteService.delete(response)
            if (!response){
                flash.message = AppUtil.infoMessage(g.message(code: "Error al eliminar"), false)
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Eliminado"))
            }
            redirect(controller: "cliente", action: "index")
        }
    }

}
