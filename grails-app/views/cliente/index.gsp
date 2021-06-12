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
                <g:message code="Clientes" args="['List']"/>
            </strong>
        </h3>

        <span class="float-right">

            <div class="btn-group">
                <g:form controller="cliente" action="index" method="GET">
                
                    <div class="input-group" id="search-area">

                        <g:select name="colName" class="form-control" from="[empresa: 'Nombre Empresa', cedula: 'NIT', nombre: 'Nombre Responsable']" value="${params?.colName}" optionKey="key" optionValue="value"/>

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
                <g:link controller="cliente" action="create" class="btn btn-success">
                    <g:message code="Nuevo registro"/>
                </g:link>

                <g:link controller="cliente" action="index" class="btn btn-primary">
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
                        NIT
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Empresa
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Nombre Responsable
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Telefono
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Antiguedad
                    </th>

                    <th class="action-row" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        <g:message code="Accion"/>
                    </th>
                </tr>
                
            </thead>

            <tbody>
                <g:each in="${clienteList}" var="info">
                    <tr>
                        <td>${info?.id}</td>
                        <td>${info?.cedula}</td>
                        <td>${info?.empresa}</td>
                        <td>${info?.nombre}</td>
                        <td>${info?.telefono}</td>
                        <td>${info?.antiguedad}</td>

                        <td>
                            <div class="btn-group">

                                <g:link controller="cliente" action="edit" class="btn btn-secondary" id="${info.id}" style="background-color:#FFA500">
                                    <i>Editar</i>
                                </g:link>

                                <p>&nbsp</p>

                                <g:link controller="cliente" action="delete" class="btn btn-secondary delete-confirmation" id="${info.id}" style="background-color:red">
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