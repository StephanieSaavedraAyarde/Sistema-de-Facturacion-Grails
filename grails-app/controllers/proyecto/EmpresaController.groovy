package proyecto

class EmpresaController {

    EmpresaService empresaService

    def index() {
        def response = empresaService.list(params)
        [empresaList: response.list, total:response.count]
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [empresa: flash.redirectParams]
        } else {
            def response = empresaService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
                redirect(controller: "empresa", action: "index")
            } else {
                [empresa: response]
            }
        }
    }

    def update() {
        def response = empresaService.getById(params.id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "empresa", action: "index")
        }else{
            response = empresaService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "Error en la Modificacion"), false)
                redirect(controller: "empresa", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Actualizado"))
                redirect(controller: "empresa", action: "index")
            }
        }
    }

}
