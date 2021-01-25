    <%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="Turnos.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml lang=" en"">

<head runat="server">
  <meta name="description" content="Turnos Online Agenda" />
  <meta name="keywords" content="Turnos Online Agenda TurnOn" />
  <meta name="author" content="TurnOn" />

  <link href="css/logincss.css" rel="stylesheet" />
  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--font awesome con CDN-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
  <script src="js/SweetAlert.js"></script>
  <title>Registro</title>
  <link rel="icon" href="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" type="image/x-icon">
     <style>
         .borde {
            border-style: solid;
            border-width: 1px;
            background:#e7e7e7;
        }
     </style>
</head>

<body>
  <form id="form1" runat="server">
    <div class="container">

      <div class="container">
        <div class="wrapper borde">
            
            <div class="row d-flex align-content-center justify-content-center mt-2">

              <h2>
                  
                <asp:Label ID="lblRegistro" class="font-weight-bold text-primary mt-2" style="width: 30rem;" runat="server" Text="Registrarme"></asp:Label>

                     
              </h2>

             
            </div>
             <hr class="w-75" />
          <form class="form-signin ">             
            

              <center>
                 
            <asp:TextBox ID="txtMail1" class="form-control w-75" placeholder="Correo" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtMail2" class="form-control w-75" placeholder="Repetir Correo" runat="server"></asp:TextBox>
            <hr  class="w-75"/>
            <asp:TextBox ID="txtPassword1" type="password" class="form-control w-75" placeholder="Contraseña" runat="server">
            </asp:TextBox>
            <br />
            <asp:TextBox ID="txtPassword2" type="password" class="form-control w-75" placeholder="Repetir Contraseña" runat="server"></asp:TextBox>
            </center>
            <hr class="w-75"/>

                <center>
              <div ID="DivRegistro" class="alert alert-secondary w-75" runat="server">
              
                <p class="font-weight-bold text-primary "><h2>Datos del local</h2> </p>
              <asp:TextBox ID="txtNombreLocal" class="form-control w-75 my-2" placeholder="Nombre del local" runat="server"></asp:TextBox>
              <%--<asp:Label ID="Label1" class="font-weight-bold w-75 my-2" runat="server" Text="Localidad"></asp:Label>--%>
                  <asp:DropDownList ID="cboLocalidades" class="form-control w-75 my-2" runat="server">
                     <asp:ListItem Value="">Localidad</asp:ListItem>
                  </asp:DropDownList>

                  <asp:DropDownList ID="cboRubros" class="form-control w-75 my-2" runat="server">
                     <asp:ListItem Value="">Rubro</asp:ListItem>
                  </asp:DropDownList>

                  <div class="row d-flex align-content-center justify-content-center">
                       
                       <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 ">
                    <asp:TextBox ID="txtCalle" class="form-control w-75 my-2" placeholder="Calle" runat="server"></asp:TextBox>
                       </div>
                       <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                    <asp:TextBox ID="txtNumero" class="form-control w-75 my-2" placeholder="Número" runat="server"></asp:TextBox>
                       </div>                      
                        
                  </div>
                  <div class="alert alert-primary w-75">
                    <p class="font-weight-normal">Una vez registrado, podrá agregar más datos como el logo del local o la descripción</p>
                  </div>
             
            
               
                </div>

            </center>

            <hr class="w-50"/>
            <div class=" d-flex align-content-center justify-content-center text-center w-100">
              <div class="card w-75">
                <div class="card-header">Captcha</div>
                <div class="card-body">
                  <h5 class="card-title"></h5>
                  <p class="card-text">¿Qué ves?</p>
                    <center>
                  <asp:Label ID="lblCaptcha" class="text-xl font-weight-bold" runat="server" Text="Label"></asp:Label>
                  <br></br>
                  <asp:TextBox ID="txtCaptcha" Class="form-control w-75" runat="server"></asp:TextBox>
                
                    </center>
                </div>
              </div>
            </div>
            <hr class="w-75">
            </hr>
            <div class="form-group ">
              <center>
                <asp:Button ID="btnRegistrarme" runat="server" class="btn btn-lg btn-primary btn-block mb-2 w-75"
                  Text="Registrarme" />


                <asp:Button ID="btnSalir" runat="server" class="btn btn-lg btn-secondary btn-block w-75" Text="Salir" />
              </center>

            </div>

          </form>
        </div>
      </div>




    </div>

    <!-- Footer -->
    <footer class="page-footer font-small mdb-color pt-1" style="background:#383838">

      <!-- Footer Links -->
      <div class="container text-center text-md-left">

        <!-- Footer links -->
        <div class="row text-center text-md-left mt-1 pb-3">

          <!-- Grid column -->
          <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-1">
            <h6 class="text-uppercase mb-4 font-weight-bold">TurnOn</h6>
            <p> <h2>Agenda de turnos online para locales y clientes</h2><p>
          </div>
          <!-- Grid column -->

         

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-1">
            <h6 class="text-uppercase mb-4 font-weight-bold">Contacto</h6>
            <p>
              <i class="fas fa-home fa-2x text-gray-300 mr-3"></i> Río Segundo, Córdoba, Argentina</p>
            <p>
              <i class="fas fa-envelope fa-2x text-gray-300 mr-3"></i>tturn.onn@gmail.com</p>
            <p>
              <i class="fas fa-phone fa-2x text-gray-300"></i>+54 3572 502818</p>
            
          </div>
          <!-- Grid column -->

        </div>
        <!-- Footer links -->

        <hr>

        <!-- Grid row -->
        <div class="row d-flex align-items-center">

          <!-- Grid column -->
          <div class="col-md-7 col-lg-8">

            <!--Copyright-->
            <p class="text-center text-md-left">© 2020 Copyright:
              <a href="http://turnon.somee.com/">
                <strong> TurnOn.com</strong>
              </a>
            </p>

          </div>
         

          <!-- Grid column -->
          <div class="col-md-5 col-lg-4 ml-lg-0">

            <!-- Social buttons -->
            <div class="text-center text-md-right">
              <ul class="list-unstyled list-inline">
                <li class="list-inline-item">
                  <a class="btn-floating btn-sm rgba-white-slight mx-1">
                    <i class="fab fa-facebook-f"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-floating btn-sm rgba-white-slight mx-1">
                    <i class="fab fa-twitter"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-floating btn-sm rgba-white-slight mx-1">
                    <i class="fab fa-google-plus-g"></i>
                  </a>
                </li>
                <li class="list-inline-item">
                  <a class="btn-floating btn-sm rgba-white-slight mx-1">
                    <i class="fab fa-linkedin-in"></i>
                  </a>
                </li>
              </ul>
            </div>

          </div>
          <!-- Grid column -->

        </div>
        

      </div>
      <!-- Footer Links -->

    </footer>
    <!-- Footer -->

  </form>
</body>

</html>