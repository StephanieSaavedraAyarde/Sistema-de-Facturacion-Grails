<div class="form-group">
    <label>
        <g:message code="Nombre Trabajador"/> *
    </label>
    <g:textField name="nombre" class="form-control" value="${trabajador?.nombre}" placeholder="Ingrese el nombre del trabajador"/>

    <UIHelper:renderErrorMessage fieldName="nombre" model="${trabajador}" errorMessage="Por favor ingrese el nombre del trabajador"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Cedula"/> *
    </label>
    <g:textField name="cedula" class="form-control" value="${trabajador?.cedula}" placeholder="Ingrese la carnet de identidad del trabajador"/>

    <UIHelper:renderErrorMessage fieldName="cedula" model="${trabajador}" errorMessage="Por favor ingrese la carnet de identidad del trabajador"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Telefono"/> *
    </label>
    <g:textField name="telefono" class="form-control" value="${trabajador?.telefono}" placeholder="Ingrese el Telefono del trabajador"/>

    <UIHelper:renderErrorMessage fieldName="telefono" model="${trabajador}" errorMessage="Por favor ingrese el Telefono del trabajador"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Especialidad"/> *
    </label>

    <select name="especialidad" class="form-control" value="${trabajador?.especialidad}" placeholder="Selecciones la especialidad del trabajador">
        <option>Cimientos</option>
        <option>Diseño Estructural</option>
        <option>Muros de contension</option>
        <option>Hidrologia</option>
        <option>Geologia</option>
        <option>Maestro de Obras</option>
        <option>Arquitecto</option>
    </select>


    <UIHelper:renderErrorMessage fieldName="especialidad" model="${trabajador}" errorMessage="Por favor ngrese la especialidad del trabajador"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Ciudad"/> *
    </label>
    <g:textField name="ciudad" class="form-control" value="${trabajador?.ciudad}" placeholder="Ingrese la ciudad del trabajador"/>

    <UIHelper:renderErrorMessage fieldName="ciudad" model="${trabajador}" errorMessage="Por favor ingrese la ciudad del trabajador"/>
</div>