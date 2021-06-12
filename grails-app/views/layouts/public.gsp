<!DOCTYPE html>

<html lang="en" class="no-js">
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

        <title>
            <g:layoutTitle default="Constructora Alejandro Ayarde"/>
        </title>

        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <asset:link rel="icon" href="logo.ico" type="image/x-ico"/>

        <asset:stylesheet src="application.css"/>
        <asset:javascript src="application.js"/>

        <g:layoutHead/>

    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" role="navigation" style="background-color: #0099CC; font-family: Arial; font-size-adjust: 0.68; height: 75px">
                
            <g:link class="btn" style="border:#FFFFFF 1px solid; border-radius: 10px; color:white">
                <g:message code="Home"/>
            </g:link>

            <p>&nbsp;&nbsp;</p>
                
            <g:link class="btn" style="border:#FFFFFF 1px solid; border-radius: 10px; color:white">    
                <g:message code="Servicios"/> </font>
            </g:link>

            <p>&nbsp;&nbsp;</p>

            <g:link class="btn" style="border:#FFFFFF 1px solid; border-radius: 10px; color:white">
                <g:message code="Clientes"/>
            </g:link>

            <p>&nbsp;&nbsp;</p>

            <g:link class="btn" style="border:#FFFFFF 1px solid; border-radius: 10px; color:white">
                <g:message code="Empleados"/>
            </g:link> 

            <p>&nbsp;&nbsp;</p>

            <g:link class="btn" style="border:#FFFFFF 1px solid; border-radius: 10px; color:white">
                <g:message code="Trabajadores"/>
            </g:link>

            <p>&nbsp;&nbsp;</p>

            <g:link class="btn" style="border:#FFFFFF 1px solid; border-radius: 10px; color:white">
                <g:message code="Reportes"/>
            </g:link>

        </nav>

        <g:layoutBody/>

        <div id="spinner" class="spinner" style="display:none;">
            <g:message code="spinner.alt" default="Loading&hellip;"/>
        </div>

        <br>
        <br>

    </body>
</html>
