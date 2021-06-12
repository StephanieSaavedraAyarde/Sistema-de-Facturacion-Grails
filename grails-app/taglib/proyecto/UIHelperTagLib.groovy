package proyecto

class UIHelperTagLib {

    static namespace = "UIHelper"

    AuthenticationService authenticationService

    def renderErrorMessage = { attrs, body ->
        def model = attrs.model
        String fieldName = attrs.fieldName
        String errorMessage = attrs.errorMessage? g.message(code: attrs.errorMessage): g.message(code: "invalid.input")
        if (model && model.errors && model.errors.getFieldError(fieldName)){
            out << "<small class='form-text text-danger''><strong>${errorMessage}</strong></small>"
        }
    }

    def memberActionMenu = { attrs, body ->
        out << '<li class="nav-item dropdown show">'
        out << g.link(class:"nav-link dropdown-toggle", "data-toggle":"dropdown"){authenticationService.getMemberName()}
        out << '<div class="dropdown-menu">'
        out << g.link(controller: "authentication", action: "logout", class: "dropdown-item"){g.message(code:"Cerrar Sesion")}
        out << "</div></li>"
    }


    def leftNavigation = { attrs, body ->
        List navigations = [
                [controller: "home", action: "create", name: "HOME"],
                [controller: "servicio", action: "index", name: "SERVICIO"],
                [controller: "cliente", action: "index", name: "CLIENTE"],
        ]

        if(authenticationService.isAdministratorMember()){
            navigations.add([controller: "empleado", action: "index", name: "EMPLEADOS"])
            navigations.add([controller: "trabajador", action: "index", name: "TRABAJADORES"])
            navigations.add([controller: "home", action: "index", name: "REPORTES"])
            navigations.add([controller: "member", action: "index", name: "USUARIO"])
        }

        navigations.each { menu ->
            out << '<li class="list-group-item">'
            out << g.link(controller: menu.controller, action: menu.action) { g.message(code: menu.name, args: ['']) }
            out << '</li>'
        }
    }

    def appBaseURL = { attrs, body ->
        out << AppUtil.baseURL();
    }

}
