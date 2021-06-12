<meta name="layout" content="public"/>

<div class="card" >

    <div class="card">
        <table>
            <td style="width:50%">
            <br>
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

    <div class="card-header" style="background-color:#FFFFFF">
        <div class="card-header">
        <br>
        <h3>
            <strong>
                <g:message code="Registro Nuevo Usuario" args="['Create']"/>
            </strong>
        </h3>
    </div>

    <table style="background-color:#FFFFFF">
        <td style="width:63%">
            <div class="card-body">
                <g:form controller="authentication" action="doRegistration">
                    <h5>
                        <g:render template="/member/form"/>
                    </h5>

                    <div class="form-action-panel" align="center">
                
                        <g:submitButton name="registration" value="REGISTAR USUARIO" class="btn btn-primary" style="color:#FFFFFF; background-color:#4682B4"/>

                        <g:link controller="authentication" action="login" class="btn btn-primary" style="color:#FFFFFF; background-color:#4682B4">
                            <g:message code="REGRESAR AL LOGIN"/>
                        </g:link>
                    </div>

                </g:form>
            </div>
        </td>
        
        <td>
            <div align="right">
                <asset:image src="usuario.svg" class="create-cliente" width="480" height="350"/>
            </div>
        </td>

    </table>

    
</div>
