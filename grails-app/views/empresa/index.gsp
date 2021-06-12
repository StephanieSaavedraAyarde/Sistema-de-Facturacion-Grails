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
                <g:message code="Datos empresariales" args="['List']"/>
            </strong>
        </h3>

        <span class="float-right">

            <div class="btn-group">

                <g:link controller="empleado" action="index" class="btn btn-primary">
                    <g:message code="Actualizar"/>
                </g:link>

                <p>&nbsp</p>

                <g:link controller="member" action="index" class="btn btn-primary" style="background-color:#FFA500">
                    <g:message code="Usuarios"/>
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
                        Nombre Empresa
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        NIT
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Nombre del Responsable
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Direccion
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Numero de Telefono
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Rubro
                    </th>

                    <th class="action-row" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        <g:message code="Accion"/>
                    </th>
                </tr>
                
            </thead>

            <tbody>
                <g:each in="${empresaList}" var="info">
                    <tr>
                        <td>${info?.id}</td>
                        <td>${info?.nombreEmpresa}</td>
                        <td>${info?.nit}</td>
                        <td>${info?.nombreResponsable}</td>
                        <td>${info?.direccion}</td>
                        <td>${info?.numeroTelefono}</td>
                        <td>${info?.rubro}</td>

                        <td>
                            <div class="btn-group">

                                <g:link controller="empresa" action="edit" class="btn btn-secondary" id="${info.id}" style="background-color:#FFA500">
                                    <i>Editar</i>
                                </g:link>


                            </div>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>

        <div class="paginate">
            <g:paginate total="${total}" />
        </div>
    </div>
</div>