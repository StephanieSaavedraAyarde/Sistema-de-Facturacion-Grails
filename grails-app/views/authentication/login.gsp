<meta name="layout" content="public"/>

<div id="global-wrapper">
    <br>
    <div id="content-wrapper">

        <div class="container" align="center">
 
            <div class="row">

                <div class="col-sm-6 col-md-4 mx-auto">
                    <strong>
                        <h2 class="text-center login-title">
                            Login
                        </h2>
                    </strong>

                    <div class="account-wall" align="center">

                        <br>

                        <g:img dir="images" file="logo.png" class="profile-img" width="200" height="150"/>

                        <br>
                        <br>

                        <h3>Bienvenido al sistema </h3>
                        <br>

                        <g:form controller="authentication" action="doLogin" class="form-signin">
                        
                            <g:textField name="email" class="form-control" placeholder="Usuario" required="required" />

                            <br>

                            <g:passwordField name="password" class="form-control" placeholder="Contraseña" required="required" />

                            <br>

                            <g:submitButton class="btn btn-lg btn-primary btn-block" name="login" value="Ingresar" style="background-color:#4682B4"/>
                                <g:link controller="authentication">
                            </g:link>

                            <br>

                            <g:link controller="authentication" action="registration" style="color:#4682B4">
                                Eres nuevo? Registrarme ahora 
                            </g:link>

                            <br>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>