<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InicioUsuario.aspx.vb" Inherits="Turnos.Inicio" %>

<!DOCTYPE html5>

<html xmlns="http://www.w3.org/1999/xhtml lang=" en"">

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
  <title>Inicio - TurnOn</title>
  <link rel="icon" href="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" type="image/x-icon">
  <style>
    .img-fluid {
      max-width: 100%;
      height: auto;
    }

    .borde {
      border-style: solid;
      border-width: 1px;
      border-color: black;
    }

    /*  param deslizar center label grilla*/
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
      width: 3px;
    }

    #global::-webkit-scrollbar-thumb {
      background: #A9A9A9;
      border-radius: 5px;
    }
    .responsiveImg {
  width: auto;
  height: auto;
}
     .sliderimg {
  width: auto !important;
  height: auto;
 max-height: 75vh !important;
}
  </style>

</head>

<body style="background:#eee;">

  <form id="form1" runat="server">

       <div class="row">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-success fixed-top mb-5">
      <div class="container">
        <a class="navbar-brand font-weight-bold text-light  " href="Inicio.aspx">
          <img src="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" width="50vh" height="50vh"
            class="d-inline-block align-top" alt="">
          TurnOn</a>

        <button class="navbar-toggler bg-light " type="button" data-toggle="collapse" data-target="#navbarResponsive"
          aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto d-flex align-items-center">
                  <li class="nav-item">
              <a class="nav-link" href="Inicio.aspx"><asp:Button ID="btnInicio" Class="btn btn-outline-secondary btn-sm text-dark bg-light" runat="server" Text="Inicio" /></a>
            </li>      
            <li class="nav-item">
              <a class="nav-link" href="InicioUsuario.aspx"><asp:Button ID="btnMisTurnos" Class="btn btn-outline-secondary btn-sm text-dark bg-light" runat="server" Text="Mis turnos" /></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="CuentaUsuario.aspx"><asp:Button ID="btnCuentaUsuario" Class="btn btn-outline-secondary btn-sm text-dark bg-light" runat="server" Text="Mi cuenta" /></a>
            </li>
               <li class="nav-item">
              <asp:Button ID="btnCerrarSesion" Class="btn btn-danger btn-sm text-light" runat="server" Text="Cerrar Sesión" />
            </li>
          </ul>
        </div>
      </div>
    </nav>
</div>

   

    <!--   INICIO  CARRUSEL    -->
     <div class="row">

      
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
          <div class="carousel-item active " style="height:auto; Width:100vw;">
            <center>
              <img src="https://i.postimg.cc/9FNm2z7f/5-3.jpg" class="d-block  sliderimg"  style="max-height:75vh; max-width:50vw;" alt="...">
              <div class="carousel-caption d-none d-block ">
                <h5 class="font-weight-bold ">Turn On</h5>
                <p class="font-weight-bold ">Agenda virtual 100% online</p>
              </div>
            </center>
          </div>
          <div class="carousel-item " style="height:auto; Width:100vw;">
            <center>
              <img src="https://i.postimg.cc/qMGwfRxF/6.jpg"class="d-block sliderimg"  alt="...">
              <div class="carousel-caption d-none d-block">
                <h5 class="font-weight-bold " >Turn On</h5>
                <p class="font-weight-bold ">Gestioná tus tunos de manera remota</p>
              </div>
  </center>
          </div>
        
          <div class="carousel-item " style="height:auto; Width:100vw;">
            <center>
              <img src="https://i.postimg.cc/rwQdcQq2/szabo-viktor-r-r0-VQfi5-Pk-unsplash.jpg" class="d-block sliderimg" alt="...">
              <div class="carousel-caption d-none d-block">
                <h5 class="font-weight-bold ">Turn On</h5>
                <p class="font-weight-bold ">Servicio para Locales y Clientes</p>
              </div>
 </center>
          </div>
         
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

</div>


    <!--   FIN  CARRUSEL    -->



    <div class="container">


      <%--**********CARD BIENVENIDO USUARIO**********--%>
      <div class="row">
        <div class="container my-0">

          <hr class="my-3">

          <div class="row d-flex align-content-center justify-content-center text-center">

            <div class="col-sm-12 col-md-6 col-xl-6 col-md-3">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Bienvenido</div>

                      <asp:Label ID="lblUsuario" class="h5 mb-0 font-weight-light text-gray-800" runat="server" Text="">
                      </asp:Label>
                    </div>
                    <div class="col-auto">
                      <%--<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>--%>
                      <i class="far fa-user fa-2x text-text-300""></i>                          
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

     

      </div>

      <%--**********FIN ENCABEZADO**********--%>



        <%--**********MIS TURNOS**********--%>
            <div class=" row mt-4">
                        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12" Id="MisTurnos">
                          <h4 class="display-1">
                            <center>Mis turnos</center>
                          </h4>
                          <hr>
                          </hr>
                        </div>
                    </div>

         <div class="row d-flex justify-content-center align-items-center alert alert-info  pt-2">
             <center>

             
             <asp:Label ID="lblTurnos" class="text-primary" runat="server" Text="Label"></asp:Label>
                 </center>
                      <asp:Repeater ID="RepeaterMisTurnos" runat="server">
                        <ItemTemplate>
                          <div class="col-sm-12  col-xl-3 col-md-6 my-4 ">
                            <div class="card border-left-info shadow h-100 ">
                              <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                  <div class="col mr-2">
                                    <asp:Label ID="Label3"
                                      class="text-xs font-weight-bold text-info text-uppercase mb-1 " runat="server"
                                      Text="Fecha:"></asp:Label>
                                    <asp:Label ID="lblFecha"
                                      class="text-xs h5  font-weight-bold text-uppercase mb-1 text-gray-600"
                                      runat="server" Text='<%#Eval("FechaTurno")%>'></asp:Label>
                                    <br></br>
                                    <asp:Label ID="Label2"
                                      class="text-xs font-weight-bold text-info text-uppercase mb-1" runat="server"
                                      Text="Hora:"></asp:Label>
                                    <asp:Label ID="IdTurno"
                                      class="text-xs font-weight-bold text-info text-uppercase mb-1"
                                      Text='<%#Eval("IdTurno")%>' runat="server" hidden="hidden"></asp:Label>
                                    <asp:Label ID="lblHora" class="h5 mb-0 font-weight-bold text-gray-800"
                                      runat="server" Text='<%#Eval("Hora")%>'></asp:Label>
                                    <br />
                                    <hr />
                                    <asp:Label ID="Label4"
                                      class="text-xs font-weight-bold text-info text-uppercase mb-1" runat="server"
                                      Text="Local:"></asp:Label>
                                    <asp:Label ID="LblNombreLocal" class="h6 mb-0 font-weight-bold text-gray-800 mb-1"
                                      Text='<%#Eval("NombreLocal")%>' runat="server"></asp:Label>
                                  </div>
                                  <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                    <%--aca poner logo del local--%>
                                  </div>
                                </div>
                              </div>
                              <div class="card-footer d-flex justify-content-center align-items-center">
                                <asp:Button runat="server" class="btn btn-outline-danger btn-sm" Text="Eliminar turno">
                                </asp:Button>
                              </div>
                            </div>
                          </div>
                        </ItemTemplate>
                      </asp:Repeater>




                      <hr>
                      </hr>
                    </div>


       <%--********** FIN MIS TURNOS**********--%>


      <%--BUSCADOR LOCALES--%>

      <div class="row  my-2">
      

        <div class="col-sm-12 col-md-9 col-lg-9 " Id="Locales" >
          <div class="row d-flex justify-content-center align-items-center  w-100  mb-3">
           
 <asp:TextBox runat="server" ID="txtNombreLocal" class="form-control my-1 mx-3 " placeholder="Nombre del local"></asp:TextBox>
            <asp:LinkButton ID="btnBuscarLocal" runat="server" class="btn btn-primary btn-lg font-weight-light">Buscar<i class="fas fa-search"> </i></asp:LinkButton>
               <asp:LinkButton ID="btnLimpiarFiltros" runat="server" class="btn btn-primary btn-lg font-weight-light mx-1 my-1">Limpiar filtros<i class="fas fa-broom"> </i></asp:LinkButton>
      
            
          </div>
         <hr></hr>
          <div class="row d-flex align-content-center justify-content-around alert-info ">
               
<asp:Label ID="lblLocales" class="text-primary" runat="server" Text=""></asp:Label>
             
            <asp:Repeater ID="RepeaterLocales" runat="server">

              <ItemTemplate>
                <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 my-2 ">


                  <div class="card">
                      <div class="row ">
                          <center>
                            <div class="row d-flex justify-content-center aling-item-center w-50 mh-50 ">                        
                      
                        <img class="card-img-top rounded img-fluid d-block  responsiveImg mt-2"  src='<%#Eval("RutaLogo")%>' alt="error al cargar imagen" <%--style="height:15vh; Width:15vw;"--%>>
                      
                       </div>
                          </center>

                      </div>
                      
                    <asp:Label ID="lblIdLocal" runat="server" Text='<%#Eval("IdLocal")%>' Visible="False"></asp:Label>
                    <div class="card-body">
                      <h4 class="card-title">
                        <asp:Label ID="lblNombreLocal" runat="server" Text='<%#Eval("Nombre")%>'></asp:Label>
                      </h4>
                        <h6 class="card-subtitle mb-2 text-muted font-italic" ><asp:Label runat="server" Text='<%#Eval("Rubro")%>'></asp:Label></h6>
                         <h6 class="card-subtitle mb-2 text-muted font-italic" ><asp:Label runat="server" Text='<%#Eval("Localidad")%>'></asp:Label></h6>
                      <p class="card-text">
                        <asp:Label ID="lblDescripcionLocal" runat="server" Text='<%#Eval("DescripcionLocal")%>'></asp:Label>
                      </p>
                    </div>
                    <div class="card-footer">
                      <asp:Button ID="btnVerLocal" class="btn btn-block btn-primary" runat="server" Text="Ver Local">
                      </asp:Button>
                    </div>
                  </div>
                </div>



              </ItemTemplate>

            </asp:Repeater>




          </div>

        </div>
      

        <%--Columna derecha--%>

        <div class="col-sm-12 col-md-3 col-lg-3 col-xl-3  alert alert-secondary mt-2 mb-1 p-2">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Categorías</h6>
            </div>
            <div class="card-body">
                
              <asp:Repeater ID="RepeaterCategorias" runat="server">
                <ItemTemplate>
                  <asp:LinkButton ID="btnCategoria" runat="server" class="btn btn-primary font-weight-light my-2 mx-2 w-90">
                    <p class="font-weight-light"><%#Eval("Nombre")%></p><i class="fas fa-check-square"> </i>
                  </asp:LinkButton>
                  <asp:Label ID="lblIdRubro" runat="server" Text='<%#Eval("IdRubro")%>' Visible="False"></asp:Label>
                </ItemTemplate>
              </asp:Repeater>

            </div>
          </div>

          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Localidades</h6>
            </div>
            <div class="card-body">
              <asp:Repeater ID="RepeaterLocalidades" runat="server">

                <ItemTemplate>
                  <asp:LinkButton ID="btnLocalidad" runat="server"
                    class="btn btn-info font-weight-lighter my-2 mx-2 w-90">
                    <p class="font-weight-light"><%#Eval("Nombre")%></p><i class="fas fa-map-signs"> </i>
                  </asp:LinkButton>
                  <asp:Label ID="lblIdLocalidad" runat="server" Text='<%#Eval("IdLocalidad")%>' Visible="False"></asp:Label>
                </ItemTemplate>
              </asp:Repeater>
            </div>
          </div>



        </div>




      </div>


      <%--fin cuerpo locales--%>
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