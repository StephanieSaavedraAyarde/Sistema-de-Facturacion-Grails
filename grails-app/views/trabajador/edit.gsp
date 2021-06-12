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
                <g:message code="Actualizar Trabajador" args="['Update']"/>
            </strong>
        </h3>
    </div>

    <table>
        <td style="width:60%">

            <div class="card-body">

                <g:form controller="trabajador" action="update">
                    <g:hiddenField name="id" value="${trabajador.id}"/>

                    <h5>
                        <g:render template="form" model="[edit:'yes']"/>
                    </h5>

                    <div class="form-action-panel" align="center">

                        <g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "Actualizar")}"/>

                        <g:link controller="trabajador" action="index" class="btn btn-primary">
                            <g:message code="Cancelar"/>
                        </g:link>
                    </div>
                </g:form>
            </div>
        </td>

        <td style="width:50%">
            <div align="right">
                <asset:image src="trabajador.png" class="create-trabajador" width="680" height="450"/>
            </div>
        </td>

    </table>
    
</div>