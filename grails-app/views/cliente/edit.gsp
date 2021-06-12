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
                <g:message code="Actualizar Cliente" args="['Update']"/>
            </strong>
        </h3>
    </div>

    <table>
        <td style="width:65%">

            <div class="card-body">

                <g:form controller="cliente" action="update">
                    <g:hiddenField name="id" value="${cliente.id}"/>

                    <h5>
                        <g:render template="form" model="[edit:'yes']"/>
                    </h5>

                    <div class="form-action-panel" align="center">

                        <g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "ACTUALIZAR")}" style="color:#FFFFFF; background-color:#4682B4"/>

                        <g:link controller="cliente" action="index" class="btn btn-primary" style="color:#FFFFFF; background-color:#4682B4">
                            <g:message code="CANCELAR"/>
                        </g:link>
                    </div>
                </g:form>
            </div>
        </td>

        <td style="width:50%">
            <div align="center">
                <asset:image src="clientes.svg" class="create-cliente" width="480" height="350"/>
            </div>
        </td>

    </table>
    
</div>