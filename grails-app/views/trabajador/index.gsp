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
                <g:message code="Trabajadores" args="['List']"/>
            </strong>
        </h3>

        <span class="float-right">

            <div class="btn-group">
                <g:form controller="trabajador" action="index" method="GET">
                
                    <div class="input-group" id="search-area">

                        <g:select name="colName" class="form-control" from="[nombre: 'Nombre', especialidad: 'Especialidad', ciudad: 'Ciudad']" value="${params?.colName}" optionKey="key" optionValue="value"/>

                        <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>

                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                Buscar Registro
                            </button>
                        </span>

                    </div>
                </g:form>
            </div>

            <div class="btn-group">
                <g:link controller="trabajador" action="create" class="btn btn-success">
                    <g:message code="Nuevo registro"/>
                </g:link>

                <g:link controller="trabajador" action="index" class="btn btn-primary">
                    <g:message code="Actualizar"/>
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
                        Nombre Trabajador
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Cedula de Identidad
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Telefono del trabajador
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Especialidad
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Ciudad
                    </th>

                    <th class="action-row" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        <g:message code="Accion"/>
                    </th>
                </tr>
                
            </thead>

            <tbody>
                <g:each in="${trabajadorList}" var="info">
                    <tr>
                        <td>${info?.id}</td>
                        <td>${info?.nombre}</td>
                        <td>${info?.cedula}</td>
                        <td>${info?.telefono}</td>
                        <td>${info?.especialidad}</td>
                        <td>${info?.ciudad}</td>

                        <td>
                            <div class="btn-group">

                                <g:link controller="trabajador" action="edit" class="btn btn-secondary" id="${info.id}" style="background-color:#FFA500">
                                    <i>Editar</i>
                                </g:link>

                                <p>&nbsp</p>

                                <g:link controller="trabajador" action="delete" class="btn btn-secondary delete-confirmation" id="${info.id}" style="background-color:red">
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