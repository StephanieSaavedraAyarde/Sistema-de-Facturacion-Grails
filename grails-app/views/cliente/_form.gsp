<div class="form-group">
    <label>
        <g:message code="NIT"/> *
    </label>
    <g:textField name="cedula" class="form-control" value="${cliente?.cedula}" placeholder="Ingrese el NIT de la empresa"/>

    <UIHelper:renderErrorMessage fieldName="nombre" model="${cliente}" errorMessage="Por favor ingrese el NIT de la empresa"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Nombre Empresa"/> *
    </label>
    <g:textField name="empresa" class="form-control" value="${cliente?.empresa}" placeholder="Ingrese el nombre de la empresa"/>

    <UIHelper:renderErrorMessage fieldName="cedula" model="${cliente}" errorMessage="Por favor ingrese el nombre de la empresa"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Nombre del Responsable"/> *
    </label>
    <g:textField name="nombre" class="form-control" value="${cliente?.nombre}" placeholder="Ingrese el nombre del responsable"/>

    <UIHelper:renderErrorMessage fieldName="telefono" model="${cliente}" errorMessage="Por favor ingrese el nombre del responsable"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Telefono"/> *
    </label>
    <g:textField name="telefono" class="form-control" value="${cliente?.telefono}" placeholder="Ingrese el Telefono de contacto"/>

    <UIHelper:renderErrorMessage fieldName="telefono" model="${cliente}" errorMessage="Por favor ingrese el telefono de contacto"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Antiguedad"/> *
    </label>
    <input type="number" name="antiguedad" class="form-control" value="${cliente?.antiguedad}" placeholder="Ingrese la antiguedad de la empresa"/>

    <UIHelper:renderErrorMessage fieldName="antiguedad" model="${cliente}" errorMessage="Ingrese la antiguedad de la empresa"/>
</div>
