<div id="fecha" class="form-group">
    <label>
        <g:message code="Fecha"/> *
    </label>
    <g:textField name="fecha" class="form-control" value="${transaccion?.fecha}" placeholder="DD-MM-YYYY"/>

    <UIHelper:renderErrorMessage fieldName="fecha" model="${transaccion}" errorMessage="Por favor ingresa la fecha de la transaccion"/>
</div>

<div id="servicio" class="form-group">
    <label>
        <g:message code="Nombre Servicio"/> *
    </label>

    <input list="servicios" name="nombreServicio" class="form-control" value="${transaccion?.nombreServicio}" placeholder="Seleccione el servicio solicitado"/>

    <datalist id="servicios">
        <option>Mantenimiento de Calles</option>
        <option>Construccion de Condominio</option>
        <option>Construccion de Plaza</option>
        <option>Construccion de Viaducto</option>
        <option>Construccion de Pasarela</option>
        <option>Construccion de Carrerteras</option>
        <option>Construccion de Escuela</option>
        <option>Mantenimiento de Carreteras</option>
        <option>Mantenimiento de Centros de Alto Nivel</option>
    </datalist>

    <UIHelper:renderErrorMessage fieldName="nombreServicio" model="${transaccion}" errorMessage="Por favor ingresa el servicio solicitado"/>
</div>

<div id="cliente" class="form-group">
    <label>
        <g:message code="Nombre Cliente"/> *
    </label>

    <input list="clientes" name="nombreCliente" class="form-control" value="${transaccion?.nombreCliente}" placeholder="Seleccione el cliente"/>

    <datalist id="clientes">
        <option>Ministerio de Justicia</option>
        <option>Ministerio de Salud</option>
        <option>GAMLP</option>
        <option>GAMEA</option>
        <option>Emprender Futuro</option>
        <option>INRA</option>
        <option>Impuestos Nacionales</option>
        <option>ABC</option>
        <option>AGETIC</option>
        <option>SOBOCE</option>
        <option>Banco Mercantil</option>
        <option>Banco Union</option>
        <option>LINK COWORK</option>
    </datalist>

    <g:link controller="cliente" action="create" class="btn btn-primary" target="_blank" style="background-color:#4682B4">
        <g:message code="Nuevo Cliente"/>
    </g:link>

    <UIHelper:renderErrorMessage fieldName="nombreCliente" model="${transaccion}" errorMessage="Por favor ingrese el cliente"/>
</div>

<div id="empleado" class="form-group">
    <label>
        <g:message code="Nombre Empleado"/> *
    </label>

    <input list="empleados" name="nombreEmpleado" class="form-control" value="${transaccion?.nombreEmpleado}" placeholder="Ingrese el empleado"/>

    <datalist id="empleados">
        <option>Santiago Yucra</option>
        <option>Steffany Zegarra</option>
        <option>Alejandro Ayarde</option>
        <option>Juan Perez</option>
        <option>Orlando Rivera</option>
        <option>Stephanie Saavedra</option>
        <option>Maria Sandoval</option>
        <option>Carla Anivarro</option>
        <option>Valeria Averanga</option>
        <option>Fernanda Santos</option>
        <option>Michelle Ruiz</option>
        <option>Ronald Aparicio</option>
    </datalist>

    <UIHelper:renderErrorMessage fieldName="nombreEmpleado" model="${transaccion}" errorMessage="Por favor ingrese el empleado"/>
</div>

<div id="trabajadores" class="form-group">
    <label>
        <g:message code="Cantidad de Trabajadores"/> *
    </label>
    <input type="number" name="cantidadTrabajadores" class="form-control" value="${transaccion?.cantidadTrabajadores}" placeholder="Ingrese la cantidad de trabajadores"/>

    <UIHelper:renderErrorMessage fieldName="cantidadTrabajadores" model="${transaccion}" errorMessage="Por favor ingrese la cantidad de trabajadores"/>
</div>

<div id="precio" class="form-group">
    <label>
        <g:message code="Precio"/> *
    </label>
    <input type="number" id="precio" name="precio" class="form-control" value="" placeholder="Ingrese el monto a pagar por el servicio"/>

    <UIHelper:renderErrorMessage fieldName="precio" model="${transaccion}" errorMessage="Por favor ingrese el monto a pagar del servicio"/>
</div>

<div id="formaPago" class="form-group">
    <label>
        <g:message code="Forma de Pago"/> *
    </label>

    <select id="formaPago" name="formaPago" class="form-control" value="${transaccion?.formaPago}" onChange="mostrar(this.value);"/>
        <option selected="true" disabled="disabled">Seleccione la forma de pago</option>
        <option selected="true">Pago en Efectivo</option>
        <option>Pago con Tarjeta</option>
    </select>
</div>

<div id="cantidadEntregada" class="form-group">
    <label>
        <g:message code="Cantidad Entregada"/> *
    </label>
    <input type="number" id="cantidadEntregada" name="cantidadEntregada" class="form-control" value="" placeholder="Ingrese el monto entregado por el cliente"/>

    <UIHelper:renderErrorMessage fieldName="cantidadEntregada" model="${efectivo}" errorMessage="Por favor ingrese el monto entregado por el cliente"/>

</div>

<div id="cambio" class="form-group">
    <label>
        <g:message code="Cambio: "/> *
    </label>
    <br>
    <input name="resultado" value="" for="cantidadEntregada precio" readonly="readonly" class="form-control"/>
</div>

<div id="tarjeta" class="form-group">
    <label>
        <g:message code="Numero de Tarjeta"/> *
    </label>
    <g:textField name="numTarjeta" class="form-control" value="${tarjeta?.numTarjeta}" placeholder="Ingrese el monto entregado por el cliente"/>

    <UIHelper:renderErrorMessage fieldName="cantidadEntregada" model="${tarjeta}" errorMessage="Por favor ingrese el monto entregado por el cliente"/>
</div>