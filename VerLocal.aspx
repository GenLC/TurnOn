<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VerLocal.aspx.vb" Inherits="Turnos.VerLocal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
      .borde {
          border-style: solid;
          border-width: 1px;
          border-color: black;
      }

      /*  para deslizar center label grilla*/
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
  width: 100%;
  height: 100%;
}
  </style>
  <title>Local - TurnOn</title>
  <link rel="icon" href="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" type="image/x-icon">
</head>



<body>
  <form id="form1" runat="server">

    <div class="container-fluid">

     
        <!-- Navigation -->
    <nav class="navbar navbar-expand-lg  navbar-light bg-success fixed-top mb-5">
      <div class="container">
        <a class="navbar-brand font-weight-bold text-light" href="Inicio.aspx">
          <img src="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" width="50vh" height="50vh"
            class="d-inline-block align-top" alt="">
          TurnOn</a>
        <button class="navbar-toggler  bg-light" type="button" data-toggle="collapse" data-target="#navbarResponsive"
          aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
             <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnInicio" Class="btn btn-outline-secondary btn-sm text-dark bg-light" runat="server" Text="Inicio" /></a>
            </li>      
            <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnMiCuenta" Class="btn btn-outline-secondary btn-sm text-dark bg-light" runat="server" Text="Mi cuenta" /></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnMisTurnos" Class="btn btn-outline-secondary btn-sm text-dark bg-light" runat="server" Text="Mis Turnos" /></a>
            </li>
               <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnCerrarSesion" Class="btn btn-danger btn-sm text-light" runat="server" Text="Cerrar Sesión" /></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>




    </div>

    <div class="container">
 
      <div class="row mt-5">
         
        <div class="row alert alert-primary mt-5 d-flex align-items-center w-100 mx-2">
          <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 d-none d-md-block d-lg-block d-xl-block ">
           
              <center>
                  <div class="row ">

                      <center>

                           <div class="row d-flex justify-content-center aling-item-center w-50 mh-25 ">  
                        <asp:Image ID="imgLocal" class="card-img-top rounded img-fluid d-block" runat="server" />
                           </div>
                      </center>
                  </div>
 
              </center>
           
          </div>

          <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 ">
            <div class="card border-bottom-info border-right-info">
                <center>               
                <div class="card-img-top  d-sm-block d-md-none  w-50 mh-25 ">
                     <asp:Image ID="imgLocal2" class="img-fluid img-thumbnail responsiveImg d-block" runat="server" />
                </div>
              </center>
              <div class="card-body mt-1">
                <h3 class="card-header">
                  <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
                </h3>
                <h5 class="card-title"></h5>
                <h6 class="card-subtitle mb-2 text-muted">
                  <asp:Label ID="lblDescripcionLocal" class="h5 mb-0 font-weight-bold text-gray-800" runat="server"
                    Text=""></asp:Label>
                </h6>

                <div class="row d-flex justify-content-start align-items-center">
                  <div class="h4 font-weight-light text-primary  mb-1 ml-2">Categoría: </div>
                  <div class="h3  font-weight-light text-gray-800">
                    <asp:Label ID="lblCategoria" runat="server" Text=""></asp:Label>
                  </div>
                </div>

                <div class="row d-flex justify-content-start align-items-center">
                  <div class="h4 font-weight-light text-primary  mb-1 ml-2">Dirección: </div>
                  <div class=" h3 font-weight-light text-gray-800">
                    <asp:Label ID="lblDireccion" runat="server" Text=""></asp:Label>
                  </div>
                </div>
                   <div class="row d-flex justify-content-start align-items-center">
                  <div class="h4 font-weight-light text-primary  mb-1 ml-2">Télefono: </div>
                  <div class=" h3 font-weight-light text-gray-800">
                    <asp:Label ID="lblTelefono" runat="server" Text=""></asp:Label>
                  </div>
                </div>

              </div>
            </div>

          </div>


        </div>

          
      </div>

  <%-- Card Precios Turno--%>
          <div class="row mt-4" id="Precios">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
              <h3 class="display-4">
                <center>Precios</center>
              </h3>

            </div>
          </div>
          <hr class="my-3">
          <div class="row d-flex align-content-center justify-content-center my-3">

            <asp:Repeater ID="RepeaterPrecios" runat="server">
              <ItemTemplate>
                <div class="col-sm-12 col-xl-3 col-md-6 mb-4">
                  <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                      <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                          <asp:Label ID="lblDescripcionTurno" class="text-xs font-weight-bold text-success text-uppercase mb-1" runat="server" Text='<%#Eval("Descripcion")%>'></asp:Label>

                          <br />
                          <hr />
                          <asp:Label ID="lblPrecioTurno" class="h5 mb-0 font-weight-bold text-gray-800" runat="server"
                            Text='<%#Eval("Precio")%>'></asp:Label>
                        </div>
                        <div class="col-auto">

                          <i class="fas fa-dollar-sign  fa-2x text-blue-300"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>


              </ItemTemplate>

            </asp:Repeater>


          </div>



        <%--Calendario y solicitar turno--%>
      <div class="row alert alert-primary mt-5 d-flex align-items-center ">

       

          <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 ">
            <%--Calendario--%>
              

             
              <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 ">
                
                
              <div class="card card border-primary mr-3 mb-3 " id="SolicitarTurno" >
                <div class="card-header  d-block card-header py-3 ">
                  <div class="d-flex justify-content-between">
                    <div>Seleccione una fecha </div>
                    <i class="fas fa-calendar-day fa-2x text-gray-300"></i>
                  </div>
                  <hr>
                  </hr>
                </div>
                <div class="card-body">
                  <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 ">
                    <div class="d-flex align-items-center justify-content-center text-center flex-sm-column">

                      <div id="global" style="margin-top:1vh;">
                        <asp:Calendar ID="Calendario" class="table table-striped table-bordered"
                          SelectedDate="<%# DateTime.Today %>" runat="server">
                        </asp:Calendar>
                      </div>

                    </div>
                  </div>

                </div>
              </div>

            </div>
 
          </div>
 </div>
        <div class="row alert alert-primary mt-5 d-flex align-items-center ">
          <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 ">
              
        <%--Confirmar Turno--%>
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
          <div class="card card -primary border-primary <%--mr-3 mb-3--%>">
            <div class="card-header d-block card-header py-3">
              <div class="d-flex justify-content-between">
                <div>Confirmar Turno </div>
                <i class="far fa-clock  fa-2x text-blue-300""></i>                 
              </div>             
            <hr>
            </hr>           
          </div>
          <div class=" card-body">
              <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                  <div class="d-flex align-items-center justify-content-center flex-column">

                      <asp:TextBox ID="txtFechaTurno" class="form-control form-control-lg flex-fill my-3" placeholder="Fecha del turno"
                          runat="server" ReadOnly="True"></asp:TextBox>

                      <div class="d-flex  align-items-center justify-content-between mx-0">
                          <asp:TextBox ID="txtSeleccioneServicio" class="form-control  my-3 mx-2" placeholder="Servicio a reservar:"
                              runat="server" ReadOnly="True"></asp:TextBox>
                          <asp:DropDownList ID="cboServicios" Class="btn btn-info dropdown-toggle flex-fill mx-2" runat="server">
                          </asp:DropDownList>

                      </div>
                      <asp:Label ID="lblHorariosDisponibles" runat="server" Class="form-check-label flex-fill mb-2"
                          Text=""></asp:Label>
                      <div class="row">
                          

                         
                          <asp:Repeater ID="RepeaterHorarios" runat="server">
                              <ItemTemplate>
                                  <div class=" col-auto ">
                                      <div class="card mx-1 my-1 ">
                                          <asp:Label ID="lblIdHorario" runat="server" Visible="False" Text='<%#Eval("IdHorario")%>'></asp:Label>
                                          <div class="card-body">
                                              <h4 class="card-title">
                                                  <p class="font-weight-light">Hora: </p>
                                                  <asp:Label ID="lblHora" runat="server" Text='<%#Eval("Hora")%>'></asp:Label></h4>
                                              <hr />
                                              <p class="font-weight-light">Lugar: </p>
                                              <asp:Label ID="Label1" runat="server" Text='<%#Eval("Descripcion")%>'></asp:Label></h4>
                                        <div class="card-footer">
                                            <center>
                                            <asp:Button ID="btnGuardarTurno" runat="server"  class="btn btn-outline-success btn-sm" Text="Solicitar"></asp:Button>
                                            
                                                </center>
                                        </div>

                                          </div>
                                      </div>

                                  </div>

                              </ItemTemplate>
                          </asp:Repeater>
 
                      </div>




                      <hr></hr>


                  </div>



              </div>
                  
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
              <a href="http://turnon.ar/">
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