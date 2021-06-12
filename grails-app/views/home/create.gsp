<meta name="layout" content="transaccion"/>

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
                <g:message code="Nueva Transaccion" args="['Create']"/>
            </strong>
        </h3>
    </div>

    <table>
        <td style="width:65%">

            <div class="card-body">

                <g:form controller="home" action="save" oninput="resultado.value=parseInt(cantidadEntregada.value)-parseInt(precio.value)">

                    <h5>
                        <g:render template="form"/>
                    </h5>

                    <div class="form-action-panel" align="center">

                        <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "GUARDAR")}" style="color:#FFFFFF; background-color:#4682B4"/>

                        <g:link controller="home" action="index" class="btn btn-primary" style="color:#FFFFFF; background-color:#4682B4">
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