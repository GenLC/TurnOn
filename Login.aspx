<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Turnos.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml lang="en"">
<head runat="server">
     <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
   <meta name="viewport" content="width=device-width, initial-scale=1">
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <link href="css/sb-admin-2.css" rel="stylesheet" />
  <link href="css/sb-admin-2.min.css" rel="stylesheet" />
  <!--font awesome con CDN-->
             <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src="js/SweetAlert.js"></script>
    <style>
        .borde {
            border-style: solid;
            border-width: 1px;
            background: #eee;
        }
    </style>
    <title>Login - TurnOn</title>
       <link rel = "icon" href ="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" 
        type = "image/x-icon"> 
</head>
<body style="background:#eee;">
    <form id="form1" runat="server">

         <div class="container">
      <!-- Navigation -->
      <nav class="navbar navbar-expand-lg navbar-light bg-success  <%--bg-dark--%> fixed-top mb-5">
        <div class="container">
          <a class="navbar-brand font-weight-bold text-light" href="Inicio.aspx">
            <img src="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" width="50vh" height="50vh"
              class="d-inline-block align-top" alt="">
            Turn On</a>
          <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon "></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link " href="Inicio.aspx">
                  <asp:Button ID="btnInicio" Class="btn btn-outline-secondary btn-sm text-dark bg-light" runat="server"
                    Text="Inicio" /></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Inicio.aspx">
                  <asp:Button ID="btnMiCuenta" Class="btn btn-outline-secondary btn-sm text-dark bg-light" runat="server"
                    Text="Mi cuenta" /></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Login.aspx">
                  <asp:Button ID="btnRegistrarmenav" Class="btn btn-outline-secondary btn-sm text-dark bg-light" runat="server"
                    Text="Registrarme" /></a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>

        


        <div class="container mt-5 pb-2">         
            <div class="row d-flex justify-content-center align-items-center">
            

                     <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 borde my-5 mx-3">
                         <div class="row  d-flex align-content-center justify-content-center ">
                             <div class="col w-25 h-25 ">
<%--<asp:Image ID="Image1" runat="server" src="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg"  class="rounded img-fluid img-responsive d-block " alt="" ></asp:Image>--%>

                             </div>

                         </div>
                            

                        <div class="wrapper pb-4">
                            <form class="form-signin">       
                                 <h2 class="font-weight-bold text-center mt-4">Iniciar Sesión</h2>
                              
                                <div ID="Divalerta" class="alert alert-warning"  role="alert" runat="server">
                                <h4 class="alert-heading">Información</h4>
                                
                                <hr>
                                <p class="mb-0">Revisá tu casilla de correos para obtener el código de verificación de cuenta</p>
                                </div>

                              <hr>  </hr>                             
                                  <asp:TextBox ID="txtCorreo" class="form-control " placeholder="Correo" runat="server" TabIndex="1"></asp:TextBox>
                                 <br>
                                <asp:TextBox ID="txtPassword"  type="password" class="form-control mb-2" placeholder="Contraseña" runat="server" TabIndex="2"></asp:TextBox>
                                     <hr></hr>                         
                          <%-- <h5 class="text-center "> <asp:CheckBox ID="chkLocal" Text="Iniciar sesión con mi local"  runat="server"></asp:CheckBox></h5>--%>
                                <asp:Button ID="btnIniciar" runat="server" class="btn btn-lg btn-primary btn-block mt-3" Text="Iniciar Sesión" TabIndex="3" />
                               
                                     
                                <asp:Button ID="btnRegistrarme" runat="server" class="btn btn-lg btn-secondary btn-block" Text="Registrarme" TabIndex="4" /> 
                                    
                                 <hr></hr>
                                  <center>
                                <asp:Button ID="btnRegistrarLocal" runat="server" class=" btn btn-info btn-lg" Text="Registrar mi local" TabIndex="5" /> 
                                  </center>
                                     
                              <hr>  </hr>
                              
                            </form>


                         <div class="row d-flex justify-content-between ">
                             <div class="col-6">
                                <center>
                                <button class="btn btn-info" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                Ingrersar código de verificación de cuenta
                                </button>
                                <div class="collapse" id="collapseExample">
                                <div class="card card-body mt-2">
                               <asp:TextBox ID="txtCodVerficacion" class="form-control my-3"  placeholder="Código" runat="server"></asp:TextBox>
                                <asp:Button ID="btnCodVerificacion" class=" btn-outline-success" runat="server" Text="Verificar"></asp:Button>
                                </div>
                                </div>

                                </center>
                             </div>
                            
                             <div class="col-6">
                                 <center>
                                <button class="btn btn-info" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
                                Olvidé mi contraseña
                                </button>
                                <div class="collapse" id="collapseExample2">
                                <div class="card card-body mt-2">
                               <asp:TextBox ID="TextBox1" class="form-control my-3"  placeholder="Mail" runat="server"></asp:TextBox>
                                <asp:Button ID="btnRecuperarContraseña" class=" btn-outline-success" runat="server" Text="Verificar"></asp:Button>

                                </div>
                                </div>
                            </center>
                             </div>
                            
                         </div>

                     </div>

             
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
     <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</html>
