<div class="form-group">
    <label>
        <g:message code="Nombre Servicio"/> *
    </label>
    <g:textField name="nombre" class="form-control" value="${servicio?.nombre}" placeholder="Ingrese el nombre del servicio"/>

    <UIHelper:renderErrorMessage fieldName="nombre" model="${servicio}" errorMessage="Por favor ingrese el nombre del servicio"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Categoria"/> *
    </label>
    <select name="categoria" class="form-control" value="${servicio?.categoria}" placeholder="Seleccion la categoria del servicio">
        <option>Instituciones Educativas</option>
        <option>Carreteras</option>
        <option>Instituciones Publicas</option>
        <option>Instituciones Privadas</option>
        <option>Casas</option>
        <option>Puentes</option>
    </select>

    <UIHelper:renderErrorMessage fieldName="categoria" model="${servicio}" errorMessage="Por favor ingrese la categoria del servicio"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Precio Base"/> *
    </label>
    <g:textField name="precioBase" class="form-control" value="${servicio?.precioBase}" placeholder="Ingrese Precio Base"/>

    <UIHelper:renderErrorMessage fieldName="precioBase" model="${servicio}" errorMessage="Por favor ingrese el precio base"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Fecha"/> *
    </label>
    <g:textField name="fecha" class="form-control" value="${servicio?.fecha}" placeholder="DD-MM-YYYY"/>

    <UIHelper:renderErrorMessage fieldName="fecha" model="${servicio}" errorMessage="Por favor ingrese la fecha de actualizacion"/>
</div>
