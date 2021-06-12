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
                <g:message code="Facturas emitidas" args="['List']"/>
            </strong>
        </h3>

        <span class="float-right">

            <div class="btn-group">
                <g:form controller="factura" action="index" method="GET">
                
                    <div class="input-group" id="search-area">

                        <g:select name="colName" class="form-control" from="[servicio: 'Nombre Servicio', cliente: 'Nombre Cliente', empleado: 'Nombre Empleado', fecha: 'Fecha']" value="${params?.colName}" optionKey="key" optionValue="value"/>

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

                <g:link controller="factura" action="index" class="btn btn-primary">
                    <g:message code="Actualizar"/>
                </g:link>

                <p>&nbsp</p>

                <g:link controller="home" action="index" class="btn btn-primary" style="background-color:#FFA500;  border:FFA500;">
                    <g:message code="Transacciones"/>
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
                        Numero de Factura
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Fecha
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Descripcion
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Nombre Cliente
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Nombre Empleado
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Precio
                    </th>

                    <th class="sortable" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        Cantidad de Trabajadores
                    </th>

                    <th class="action-row" style="color:#FFFFFF; background-color:#4682B4; border-color:#FFFFFF">
                        <g:message code="Accion"/>
                    </th>
                </tr>
                
            </thead>

            <tbody>
                <g:each in="${facturaList}" var="info">
                    <tr>
                        <td>${info?.id}</td>
                        <td>${info?.numeroFactura}</td>
                        <td>${info?.fecha}</td>
                        <td>${info?.descripcion}</td>
                        <td>${info?.nombreCliente}</td>
                        <td>${info?.numeroCaja}</td>
                        <td>${info?.precio}</td>
                        <td>${info?.cantidadTrabajadores}</td>

                        <td>
                            <div class="btn-group">

                                <g:link controller="home" action="details" class="btn btn-secondary" id="${info.id}" style="background-color:#4682B4">
                                    <i class="fas fa-eye"></i>
                                </g:link>

                                <p>&nbsp</p>

                                <g:link controller="factura" action="delete" class="btn btn-secondary delete-confirmation" id="${info.id}" style="background-color:red">
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