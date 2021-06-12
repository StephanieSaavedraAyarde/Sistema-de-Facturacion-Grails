<div class="form-group">
    <label>
        <g:message code="Nombre Empleado"/> *
    </label>
    <g:textField name="nombre" class="form-control" value="${empleado?.nombre}" placeholder="Ingrese el nombre del empleado"/>

    <UIHelper:renderErrorMessage fieldName="nombre" model="${empleado}" errorMessage="Por favor ingrese el nombre del empleado"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Cedula de Identidad"/> *
    </label>
    <g:textField name="cedula" class="form-control" value="${empleado?.cedula}" placeholder="Ingrese la carnet de identidad"/>

    <UIHelper:renderErrorMessage fieldName="cedula" model="${empleado}" errorMessage="Por favor ingrese el carnet de identidad"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Telefono"/> *
    </label>
    <g:textField name="telefono" class="form-control" value="${empleado?.telefono}" placeholder="Ingrese el Telefono del empleado"/>

    <UIHelper:renderErrorMessage fieldName="telefono" model="${empleado}" errorMessage="Por favor ingrese el telefono del empleado"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Fecha de Nacimiento"/>
    </label>
    <g:textField name="fechaNacimiento" class="form-control" value="${empleado?.fechaNacimiento}" placeholder="DD-MM-YYYY" />

    <UIHelper:renderErrorMessage fieldName="fechaNacimiento" model="${empleado}" errorMessage="Ingrese la fecha de nacimiento"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Antiguedad"/> *
    </label>
    <input type="number" name="antiguedad" class="form-control" value="${empleado?.antiguedad}" placeholder="Ingrese la antiguedad en la empresa"/>

    <UIHelper:renderErrorMessage fieldName="antiguedad" model="${empleado}" errorMessage="Ingrese la antiguedad en la empresa"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Numero de Caja"/> *
    </label>

    <select name="caja" class="form-control" value="${empleado?.caja}"/>
        <option selected="true" disabled="disabled">Seleccione la caja asignada</option>
        <option>Caja 1</option>
        <option>Caja 2</option>
        <option>Caja 3</option>
        <option>Caja 4</option>
        <option>Caja 5</option>
        <option>Caja 6</option>
    </select>
</div>