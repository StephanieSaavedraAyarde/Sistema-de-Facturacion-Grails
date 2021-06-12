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

        <script type="text/javascript">
            OCB.baseURL = "${UIHelper.appBaseURL()}";
            <g:if test="${flash?.message && flash?.message?.info}">
            jQuery(document).ready(function () {
                OCB.messageBox.showMessage(Boolean(${flash.message?.success}), "${flash.message?.info}");
            });
            </g:if>
        </script>

        <g:layoutHead/>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" role="navigation" style="background-color:#0099CC; font-family: Arial; font-size-adjust: 0.63; height: 70px">
                
            <UIHelper:leftNavigation style="border:#FFFFFF 1px solid; border-radius: 10px; color:white; background-color:#0099CC"/>
                
            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">

                <span class="navbar-toggler-icon"></span>

            </button>

            <ul class="navbar-nav ml-auto" >
                <UIHelper:memberActionMenu/>
            </ul>

        </nav>

        <g:layoutBody/>
        <div id="spinner" class="spinner" style="display:none;">
            <g:message code="spinner.alt" default="Loading&hellip;"/>
        </div>
    </body>
</html>
