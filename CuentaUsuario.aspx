<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CuentaUsuario.aspx.vb" Inherits="Turnos.Cuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="description" content="Turnos Online Agenda" />
  <meta name="keywords" content="Turnos Online Agenda TurnOn" />
  <meta name="author" content="TurnOn" />
  <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <link href="css/sb-admin-2.css" rel="stylesheet" />
  <link href="css/sb-admin-2.min.css" rel="stylesheet" />

  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
  <script src="js/SweetAlert.js"></script>
  <!--font awesome con CDN-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <style>

       
      #main {
          overflow-x: scroll;
          width: 100%;
      }

      #horizontal-scroll {
          display: inline-flex;
          padding: 1px;
      }

      #global {
          height: 50vh;
          width: 100%;
          border: 0px solid #fff;
          background: #fff;
          overflow-y: scroll;
      }

          #global::-webkit-scrollbar {
              width: 5px;
          }

          #global::-webkit-scrollbar-thumb {
              background: #A9A9A9;
              border-radius: 5px;
          }


    </style>
  <title>Mi Cuenta</title>
  <link rel="icon" href="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" type="image/x-icon">
 
</head>
<body>
    <form id="form1" runat="server">
        
           <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top mb-5">
      <div class="container">
        <a class="navbar-brand" href="Inicio.aspx">
          <img src="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" width="50vh" height="50vh"
            class="d-inline-block align-top" alt="">
          TurnOn</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
          aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
             <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnInicio" Class="btn btn-outline-secondary btn-sm text-light" runat="server" Text="Inicio" /></a>
            </li>      
            <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnMiCuenta" Class="btn btn-outline-secondary btn-sm text-light" runat="server" Text="Mi cuenta" /></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnMisTurnos" Class="btn btn-outline-secondary btn-sm text-light" runat="server" Text="Mis Turnos" /></a>
            </li>
               <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnCerrarSesion" Class="btn btn-danger btn-sm text-light" runat="server" Text="Cerrar Sesión" /></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>


  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      </ol>

      <div class="carousel-inner">
        <div class="carousel-item active" style="height:60vh; Width:100vw;">
          <center>
            <img src="https://i.postimg.cc/KjdL8Wyg/barber-2165745-1920.jpg" class=" h-auto w-auto " alt="...">
            <div class="carousel-caption d-none d-block">
              <h5 style="color:black;">Los Angeles</h5>
              <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
            </div>
          </center>
        </div>
        <div class="carousel-item " style="height:60vh; Width:100vw;">
          <center>
            <img src="https://i.postimg.cc/KjdL8Wyg/barber-2165745-1920.jpg" class=" h-auto  w-auto " alt="...">
            <div class="carousel-caption d-none d-block">
              <h5 style="color:black;">Chicago</h5>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
        </div>
        </center>
        <div class="carousel-item " style="height:60vh; Width:100vw;">
          <center>
            <img src="https://i.postimg.cc/KjdL8Wyg/barber-2165745-1920.jpg" class=" h-auto  w-auto" alt="...">
            <div class="carousel-caption d-none d-block">
              <h5 style="color:black;">New York</h5>
              <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
            </div>
        </div>
        </center>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>


    <!--   FIN  CARRUSEL    -->


           <%-- Datos de Cueenta--%>

                      <div class="container my-0">
                        <div class="row mt-4" id="Cuenta">
                           
                          <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12" id="Div1" runat="server">
                            <h3 class="display-3">
                              <center>Mi Cuenta</center>
                            </h3>
                          </div>


                        </div>
                          <div class="row d-flex align-content-center justify-content-center ">
                             <div class="col-sm-12 col-md-6 col-xl-6 col-md-3">
                              <div class="card border-left-primary shadow h-100 py-2 ">
                                <div class="card-body">
                                  <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Correo:</div>

                                      <asp:Label ID="lblUsuario" class="h5 mb-0 font-weight-bold text-gray-500" runat="server" Text="">
                                      </asp:Label>
                                    </div>
                                    <div class="col-auto">                                     
                                      <i class="far fa-user fa-2x text-text-300""></i>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>

                        <hr class="my-3">

                          <div class="row  d-flex align-content-center justify-content-center"> 
                              
                            
                                <%--CAMBIAR CONTRASEÑA--%>
                             <div class="row d-flex align-content-center justify-content-center">                                
                            <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 mb-12 ">
                                <div class="card border-left-primary shadow h-auto mx-4 my-4">
                                  <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                      <div class="col mr-2">
                                        <asp:Label ID="Label2"
                                          class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                          runat="server" Text="Cambiar contraseña"></asp:Label>

                                        <br />
                                        <hr />
                                                                                        
                                          <div class="form-group row">
                                              <p > Contraseña Actual</p>
                                              <asp:TextBox ID="txtContraseñaActual" class="form-control" type="password"  runat="server"></asp:TextBox>                                            
                                          </div>
                                          <hr />
                                           <div class="form-group row">
                                              <asp:TextBox ID="txtContraseñaNueva" class="form-control" type="password" placeholder="Nueva contraseña" runat="server"></asp:TextBox>                                            
                                          </div>
                                         <div class="form-group row">
                                              <asp:TextBox ID="txtContraseñaRepetir" class="form-control" type="password" placeholder="Repetir contraseña" runat="server"></asp:TextBox>                                            
                                          </div>
                                           <div class="form-group row">
                                               <asp:Button ID="btnCambiarContraseña" class="btn btn-primary" runat="server" Text="Cambiar contraseña" />                                            
                                          </div>

                                      </div>
                                      <div class="col-auto">
                                         
                                        <i class="fas fa-key fa-2x text-blue-300 ml-2"></i>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div> 




                                <%--ELIMINAR CUENTA--%>                                               
                              <div class="row d-flex align-content-center justify-content-center">                                                                                    
                              <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 mb-4">
                                <div class="card border-left-danger shadow h-100 py-2 mx-4 my-4">
                                  <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                      <div class="col mr-2">
                                        <asp:Label ID="EliminarCuenta"
                                          class="text-xs font-weight-bold text-danger text-uppercase mb-1"
                                          runat="server" Text="Eliminar Cuenta"></asp:Label>

                                        <br />
                                        <hr />
                                                 <div class="input-group">
                                             
                                               <asp:TextBox ID="txtContraseñaEliminar"   class="form-control mx-2" type="password" placeholder="Contraseña"  aria-describedby="basic-addon1" runat="server"></asp:TextBox>
                                              <div class="input-group-append">
                                                
                                                  <asp:Button ID="btnEliminarCuenta" class="btn btn-danger" runat="server" Text="Eliminar" />
                                              </div>
                                            </div>

                                      </div>
                                      <div class="col-auto">                                       
                                        <i class="fas fa-user-alt-slash fa-2x text-blue-300 ml-2"></i>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                              </div>


                        </div>
                          <hr></hr>

                          <div class="row d-flex align-content-center justify-content-center">
                              <div class="row mt-4" id="HistoralTurnos">

                                  <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12" id="Div2" runat="server">

                                      <h4 class="display-5">Historial de turnos</h4>

                                  </div>


                              </div>
                              </div>
                             <div class="row d-flex align-content-center justify-content-center">
                             
                               

                               
                              <div id="global" style="margin-top: 1vh;">

                                  <asp:GridView ID="grlHistorialTurnos" class="table table-striped table-bordered  <%--table-wrapper-scroll-y pagination-ys--%>"   runat="server">

                                  </asp:GridView>
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
