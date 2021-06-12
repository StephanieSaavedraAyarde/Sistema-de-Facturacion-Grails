package proyecto

class FacturaController {

    FacturaService facturaService

    def index() {
        def response = facturaService.list(params)
        [facturaList: response.list, total:response.count]
    }

    def details(Integer id) {
        def response = facturaService.getById(id)
        if (!response){
            redirect(controller: "factura", action: "create")
        }else{
            [factura: response]
        }
    }

    def save() {
        def response = facturaService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage(g.message(code: "Error al guardar"), false)
            redirect(controller: "factura", action: "create")
        }else{
            flash.message = AppUtil.infoMessage(g.message(code: "Guardado correctamente"))
            redirect(controller: "factura", action: "index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [factura: flash.redirectParams]
        } else {
            def response = facturaService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
                redirect(controller: "factura", action: "index")
            } else {
                [factura: response]
            }
        }
    }

    def update() {
        def response = facturaService.getById(params.id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "factura", action: "index")
        }else{
            response = facturaService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "Error en la Modificacion"), false)
                redirect(controller: "factura", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Actualizado"))
                redirect(controller: "factura", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = facturaService.getById(id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "factura", action: "index")
        }else{
            response = facturaService.delete(response)
            if (!response){
                flash.message = AppUtil.infoMessage(g.message(code: "Error al eliminar"), false)
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Eliminado"))
            }
            redirect(controller: "factura", action: "index")
        }
    }

}
