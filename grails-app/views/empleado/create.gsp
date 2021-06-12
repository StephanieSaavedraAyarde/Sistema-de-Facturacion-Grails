<meta name="layout" content="main"/>

<div class="card">

    <div class="card">
        <table>
            <td style="width:50%">
            <br>
                <asset:image src="logo-grande.png" class="logo-constructora" width="250" height="110"/>
            </td>
            <td style="width:50%">
                <br>
                <h2>
                    <big>
                        <strong>
                            <font face="Arial">Constructora Alejandro Ayarde
                        </strong>
                    </big>
                </h2>
            </td>
        </table>
    </div>

    <div class="card-header">
        <br>
        <h3>
            <strong>
                <g:message code="Nuevo empleado" args="['Create']"/>
            </strong>
        </h3>
    </div>

    <table>
        <td style="width:63%">
            <div class="card-body">

                <g:form controller="empleado" action="save">

                    <h5>
                        <g:render template="form"/>
                    </h5>

                    <div class="form-action-panel" align="center">

                        <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "GUARDAR")}" style="color:#FFFFFF; background-color:#4682B4"/>

                        <g:link controller="empleado" action="index" class="btn btn-primary" style="color:#FFFFFF; background-color:#4682B4">
                            <g:message code="CANCELAR"/>
                        </g:link>
                    </div>
                </g:form>
            </div>
        </td>
        
        <td>
            <div align="right">
                <asset:image src="empleados.svg" class="create-empleado" width="480" height="350"/>
            </div>
        </td>

    </table>
</div>