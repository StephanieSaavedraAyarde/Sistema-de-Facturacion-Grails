<meta name="layout" content="main"/>

<style>
    .recibo {
      background-color:#4682B4;
      border-style: solid;

    }
    .recibo th {
      text-align:center;
      text-decoration:none;
      color: white;
      border-style: solid;
      border-color: black;
    }
    .recibo td {
      background-color: #fff;
      border-style: solid;
    }
    .card-body{
      width: 70%;
    }
</style>

<div class="card">

  <div class="card-body">

    <div class="card">
        <div class="card">
            <br>
            <table>
                <td>
                    <br>
                    <asset:image src="logo-grande.png" class="logo-constructora" width="250" height="110"/>
                </td>

                <td style="width:100%">
                    <br>
                    <h2>
                        <strong>
                          <font face="Arial">Constructora Alejandro Ayarde
                        </strong>
                    </h2>
                </td>
            </table>
            <h5 align="center">
                NIT: 3528910012<br>
                Direccion: Avenida Arce Edificio Idea #3564<br>
                Responsable: Felix Alejandro Ayarde Romero<br>
                Numero de Contacto: 71271861<br>
                Rubro: Construccion<br>
            </h5>
        </div>
        <br>

        <div class="card-header" >
          <h4>
            <strong>
                <g:message code="Recibo de Transaccion" args="['Details']"/>
            </strong>
          </h4> 
        </div>

        <div class="card-body">
            <g:if test="${home}">
              <h5>
                <table class="ventas">
                    <td>
                        <th class="text-right">
                            <g:message code="Fecha: "/>
                        </th>
                        <td class="text-left">
                            ${home.fecha}
                        </td>
                    </td>
                    
                    <td>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                        <th class="text-right">
                            <g:message code="# Recibo: "/>
                        </th>
                        <td class="text-left">
                            12345
                        </td>
                    </td>
                    
                    <td>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                        <th class="text-right">
                            <g:message code="Cliente: "/>
                        </th>
                        <td class="text-left">
                            ${home.nombreCliente}
                        </td>
                    </td>
                  </td>
                </table>
              </h5>
            </g:if>

            <br>

            <table class="recibo">
              <thead>
                <tr>
                  <th style="width:7%">ID</th>
                  <th style="width:35%">Nombre Servicio</th>
                  <th style="width:25%">Cantidad de Trabajadores</th>
                  <th style="width:20%">Pago Parcial</th>
                  <th style="width:35%">Pago Total</th>
                </tr>
              </thead>

              <tbody>
                <tr align="center">
                  <td>1</td>
                  <td>${home.nombreServicio}</td>
                  <td>${home.cantidadTrabajadores}</td>
                  <td>${home.precio}</td>
                  <td>${home.precio}</td>
                </tr>
              </tbody>

            </table> 

            <br>

        </div>
    </div>

    
  </div>
</div>