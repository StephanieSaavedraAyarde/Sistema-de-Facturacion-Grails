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

    <table>
        <td style="width:65%">
            <div class="card-header">
                <g:message code="Actualizar Transaccion" args="['Update']"/>
            </div>

            <div class="card-body">

                <g:form controller="home" action="update">
                    <g:hiddenField name="id" value="${home.id}"/>

                    <g:render template="form" model="[edit:'yes']"/>
                    <div class="form-action-panel">

                        <g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "Actualizar")}"/>

                        <g:link controller="home" action="index" class="btn btn-primary">
                            <g:message code="Cancelar"/>
                        </g:link>
                    </div>
                </g:form>
            </div>
        </td>
        
        <td style="width:50%">
            <div align="right">
                <asset:image src="empleados.svg" class="create-empleado" width="480" height="350"/>
            </div>
        </td>

    </table>
    
</div>