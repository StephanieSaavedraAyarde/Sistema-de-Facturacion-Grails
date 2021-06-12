<div class="form-group">
    <label>
        <g:message code="Nombre Empresa"/> *
    </label>
    <g:textField readonly="readonly" name="nombreEmpresa" class="form-control" value="${empresa?.nombreEmpresa}" placeholder="Ingrese el nombre de la empresa"/>

    <UIHelper:renderErrorMessage fieldName="nombreEmpresa" model="${empresa}" errorMessage="Por favor ingrese el nombre de la empresa"/>
</div>

<div class="form-group">
    <label>
        <g:message code="NIT"/> *
    </label>
    <g:textField readonly="readonly" name="nit" class="form-control" value="${empresa?.nit}" placeholder="Ingrese el nit de la empresa"/>

    <UIHelper:renderErrorMessage fieldName="nit" model="${empresa}" errorMessage="Por favor el nit de la empresa"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Nombre Responsable"/> *
    </label>
    <g:textField name="nombreResponsable" class="form-control" value="${empresa?.nombreResponsable}" placeholder="Ingrese el nombre del Responsable"/>

    <UIHelper:renderErrorMessage fieldName="nombreResponsable" model="${empresa}" errorMessage="Por favor ingrese el nombre del Responsable"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Direccion de la empresa"/>
    </label>
    <g:textField name="direccion" class="form-control" value="${empresa?.direccion}" placeholder="Ingrese la direccion de la empresa" />

    <UIHelper:renderErrorMessage fieldName="direccion" model="${empresa}" errorMessage="Por favor ingrese la direccion de la empresa"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Numero de Contacto"/> *
    </label>
    <g:textField name="numeroTelefono" class="form-control" value="${empresa?.numeroTelefono}" placeholder="Ingrese el telefono de la empresa"/>

    <UIHelper:renderErrorMessage fieldName="numeroTelefono" model="${empresa}" errorMessage="Ingrese el telefono de la empresa"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Rubro empresarial"/> *
    </label>
    <g:textField readonly="readonly" name="rubro" class="form-control" value="${empresa?.rubro}" placeholder="Ingrese el rubro de la empresa"/>

    <UIHelper:renderErrorMessage fieldName="rubro" model="${empresa}" errorMessage="Ingrese el rubro de la empresa"/>
</div>