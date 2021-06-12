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

        <h3>
            <strong>
                <g:message code="Usuarios" args="['List']"/>
            </strong>
        </h3>

        <span class="float-right">

            <div class="btn-group">
                <g:form controller="member" action="index" method="GET">

                    <div class="input-group" id="search-area">

                        <g:select name="colName" class="form-control" from="[firstName: 'Nombre', lastName: 'Apellido', email: 'Correo Electronico']" value="${params?.colName}" optionKey="key" optionValue="value"/>

                        <p>&nbsp</p>

                        <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>

                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">Buscar Registro</button>
                        </span>

                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</p>
                        
                    </div>
                </g:form>
            </div>

            <div class="btn-group">

                <g:link controller="member" action="create" class="btn btn-success">
                    <g:message code="Nuevo registro"/>
                </g:link>

                <p>&nbsp</p>

                <g:link controller="member" action="index" class="btn btn-primary">
                    <g:message code="Actualizar"/>
                </g:link>

                <p>&nbsp</p>
                
                <g:link controller="empresa" action="index" class="btn btn-primary" style="background-color:#FFA500">
                    <g:message code="Informacion Empresa"/>
                </g:link>

            </div>
        </span>
    </div>

    <div class="card-body">

        <table class="table table-bordered">

            <thead>
                <tr align="center">

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        ID
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Nombre
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Apellido
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Correo Electronico
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Categoria
                    </th>

                    <th class="action-row" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        <g:message code="action"/>
                    </th>
                </tr>
            </thead>

            <tbody>
                <g:each in="${memberList}" var="info">
                    <tr>
                        <td>${info?.id}</td>
                        <td>${info?.firstName}</td>
                        <td>${info?.lastName}</td>
                        <td>${info?.email}</td>
                        <td>${info?.memberType}</td>

                        <td>
                            <div class="btn-group">

                                <g:link controller="member" action="edit" class="btn btn-secondary" id="${info.id}" style="background-color:#FFA500">
                                    <i>Editar</i>
                                </g:link>

                                <p>&nbsp</p>

                                <g:link controller="member" action="delete" class="btn btn-secondary delete-confirmation" id="${info.id}" style="background-color:red">
                                    <i>Eliminar</i>
                                </g:link>

                            </div>
                        </td>
                    </tr>
                </g:each>
            </tbody>

        </table>

        <div class="paginate">
            <g:paginate total="${total ?: 0}" />
        </div>

    </div>
</div>