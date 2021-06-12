package proyecto


class MemberInterceptor {

    AuthenticationService authenticationService

    boolean before() {
        if (authenticationService.isAdministratorMember()){
            return true
        }
        flash.message = AppUtil.infoMessage("Usted no esta autorizado para realizar esta accion", false)
        redirect(controller: "transaccion", action: "index")
        return false
    }
}
