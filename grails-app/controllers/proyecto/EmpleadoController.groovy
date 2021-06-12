package proyecto

class EmpleadoController {

    EmpleadoService empleadoService

    def index() {
        def response = empleadoService.list(params)
        [empleadoList: response.list, total:response.count]
    }

    def create() {
        [empleado: flash.redirectParams]
    }

    def save() {
        def response = empleadoService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage(g.message(code: "Error al guardar"), false)
            redirect(controller: "empleado", action: "create")
        }else{
            flash.message = AppUtil.infoMessage(g.message(code: "Guardado correctamente"))
            redirect(controller: "empleado", action: "index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [empleado: flash.redirectParams]
        } else {
            def response = empleadoService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
                redirect(controller: "empleado", action: "index")
            } else {
                [empleado: response]
            }
        }
    }

    def update() {
        def response = empleadoService.getById(params.id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "empleado", action: "index")
        }else{
            response = empleadoService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "Error en la Modificacion"), false)
                redirect(controller: "empleado", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Actualizado"))
                redirect(controller: "empleado", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = empleadoService.getById(id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "empleado", action: "index")
        }else{
            response = empleadoService.delete(response)
            if (!response){
                flash.message = AppUtil.infoMessage(g.message(code: "Error al eliminar"), false)
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Eliminado"))
            }
            redirect(controller: "empleado", action: "index")
        }
    }

}
