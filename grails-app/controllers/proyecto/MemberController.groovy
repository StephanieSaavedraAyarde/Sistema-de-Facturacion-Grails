package proyecto

class MemberController {

    MemberService memberService

    def index() {
        def response = memberService.list(params)
        [memberList: response.list, total:response.count]
    }

    def create() {
        [member: flash.redirectParams]
    }

    def save() {
        def response = memberService.save(params)
        if (!response.isSuccess) {
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage(g.message(code: "Error al guardar"), false)
            redirect(controller: "member", action: "create")
        }else{
            flash.message = AppUtil.infoMessage(g.message(code: "Guardado correctamente"))
            redirect(controller: "member", action: "index")
        }
    }


    def edit(Integer id) {
        if (flash.redirectParams) {
            [member: flash.redirectParams]
        } else {
            def response = memberService.getById(id)
            if (!response) {
                flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
                redirect(controller: "member", action: "index")
            } else {
                [member: response]
            }
        }
    }


    def update() {
        def response = memberService.getById(params.id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "member", action: "index")
        }else{
            response = memberService.update(response, params)
            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "Error en la Modificacion"), false)
                redirect(controller: "member", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Actualizado"))
                redirect(controller: "member", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = memberService.getById(id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "Argumentos invalidos"), false)
            redirect(controller: "member", action: "index")
        }else{
            response = memberService.delete(response)
            if (!response){
                flash.message = AppUtil.infoMessage(g.message(code: "Error al eliminar"), false)
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "Eliminado"))
            }
            redirect(controller: "member", action: "index")
        }
    }



}
