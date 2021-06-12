<div class="form-group">
    <label>
        <g:message code="Nombre"/> *
    </label>

    <g:textField name="firstName" class="form-control" value="${member?.firstName}" placeholder="Ingrese su nombre"/>

    <UIHelper:renderErrorMessage fieldName="firstName" model="${member}" errorMessage="Por favor ingrese el nombre del usuario"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Apellido"/> *
    </label>

    <g:textField name="lastName" class="form-control" value="${member?.lastName}" placeholder="Ingrese su apellido"/>

    <UIHelper:renderErrorMessage fieldName="lastName" model="${member}" errorMessage="Por favor ingrese el apellido del usuario"/>
</div>

<div class="form-group">
    <label>
        <g:message code="Correo Electronico"/> *
    </label>

    <g:field type="email" name="email" class="form-control" value="${member?.email}" placeholder="Ingrese su correo electronico"/>

    <UIHelper:renderErrorMessage fieldName="email" model="${member}" errorMessage="El correo electronico no es valido/ El correo electronico ya existe en el sistema"/>
</div>

<g:if test="${!edit}">
    <div class="form-group">
        <label>
            <g:message code="Constraseña"/> *
        </label>

        <g:passwordField name="password" class="form-control" value="${member?.password}" placeholder="Ingrese la contraseña"/>

        <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Por favor ingrese la contraseña"/>
    </div>
</g:if>
