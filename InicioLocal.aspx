<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InicioLocal.aspx.vb" Inherits="Turnos.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml lang=" en"">

<head runat="server">
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

  <title> Local - TurnOn</title>
  <link rel="icon" href="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" type="image/x-icon">
  <style>
      .borde {
          border-style: solid;
          border-width: 1px;
      }


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
</head>

<body>
  <form id="form1" runat="server">

    <div class="container">


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
                <a class="nav-link">
                  <asp:Button ID="btnInicio" Class="btn btn-outline-secondary btn-sm text-light" runat="server"
                    Text="Inicio" /></a>
              </li>
              <li class="nav-item">
                <a class="nav-link">
                  <asp:Button ID="btnAdministarLocal" Class="btn btn-outline-secondary btn-sm text-light" runat="server"
                    Text="Administar local" /></a>
              </li>
              <li class="nav-item">
                <a class="nav-link">
                  <asp:Button ID="btnMiCuenta" Class="btn btn-outline-secondary btn-sm text-light" runat="server"
                    Text="Mi cuenta" /></a>
              </li>
              <li class="nav-item">
                <a class="nav-link">
                  <asp:Button ID="btnCerrarSesion" Class="btn btn-danger btn-sm text-light" runat="server"
                    Text="Cerrar Sesión" /></a>
              </li>
            </ul>
          </div>
        </div>
      </nav>


      <hr>
      </hr>






    </div>



    <div class="container mt-5">
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
                      <asp:Label ID="lblNombreLocal" runat="server" class="h3 mb-0 font-weight-normal text-black-800"
                        Text=""></asp:Label>


                    </div>
                    <div class="col-auto">

                      <i class="fas fa-store-alt fa-2x text-text-300"></i>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

      <%--Cards Principales--%>
      <div class="row mt-5">

        <%--  Calendario + Turnos por fecha--%>
        <div class="col-sm-12 col-md-12 col-lg-12 mt-2">
          <div class="card card border-primary mr-3 mb-3">
            <div class="card-header">
              Turnos
            </div>
            <div class="card-body">
              <div class="row">
                <%--Calendario--%>
                <div class="col-sm-12 col-md-6 col-lg-6 mt-2">

                  <asp:Label ID="Label1" class="mt-3 table table-striped table-bordered" runat="server"
                    Text="Seleccione una fecha"></asp:Label>
                  <hr>
                  </hr>
                  <div id="global" style="margin-top:1vh;">
                    <asp:Calendar ID="CalendariosTurnos" class="table table-striped table-bordered" runat="server">
                    </asp:Calendar>
                  </div>
                </div>

                <%--Tunros Encontrados--%>
                <div class="col-sm-12 col-md-6 col-lg-6 ">

                  <asp:Label ID="lblTurnosEncontrados" class="mt-3 table table-striped table-bordered" runat="server"
                    Text="Turnos encontrados"></asp:Label>
                  <hr>
                  </hr>
                

                  <div class="card-group">
                    <asp:Repeater ID="RepeaterTurnos" runat="server">

                      <ItemTemplate>
                        <div class="col-sm-6 col-md-12 col-lg-6 col-xl-6">
                          <div class="card mx-1 my-1 border-bottom-danger">
                            <asp:Label ID="lblIdTurno" runat="server" Visible="False" Text='<%#Eval("IdTurno")%>'>
                            </asp:Label>

                            <div class="card-body">
                              <h4 class="card-title"></h4>


                              <form>
                                <%--Hora--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold form-group">Hora: </p>
                                  </div>
                                  <div class="col">
                                    <asp:Label ID="lblHora" runat="server" Text='<%#Eval("Hora")%>'></asp:Label>
                                  </div>
                                </div>

                                <%--ServicioDescripcion--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold">Servicio </p>
                                  </div>
                                  <div class="col">
                                    <p class="font-italic">
                                      <asp:Label ID="Label6" runat="server" Text='<%#Eval("ServicioDescripcion")%>'></asp:Label>
                                    </p>
                                  </div>
                                </div>

                                    <%--ServicioDescripcion--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold">Lugar: </p>
                                  </div>
                                  <div class="col">
                                    <p class="font-italic">
                                      <asp:Label ID="Label2" runat="server" Text='<%#Eval("HorarioDescripcion")%>'></asp:Label>
                                    </p>
                                  </div>
                                </div>



                                <%--Precio--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold">Precio: </p>
                                  </div>
                                  <div class="col">
                                    <p class="font-italic">
                                      <asp:Label ID="Label4" runat="server" Text='<%#Eval("Precio")%>'></asp:Label>
                                    </p>
                                  </div>
                                </div>


                                <%--Usuario--%>
                                <div class="row">

                                  <div class="col">
                                    <center>
                                      <a class="btn btn-primary btn-sm" data-toggle="collapse" href="#collapseExample"
                                        role="button" aria-expanded="false" aria-controls="collapseExample">
                                        Ver Usuario
                                      </a>

                                      </p>
                                      <div class="collapse" id="collapseExample">
                                        <div class="card card-body">
                                          <p class="font-italic">
                                            <asp:Label ID="lblMailUsuario" runat="server" Text='<%#Eval("Mail")%>'></asp:Label>
                                          </p>
                                            <hr></hr>
                                <%--Estado--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold">Estado: </p>
                                  </div>
                                  <div class="col">
                                    <p class="font-italic">
                                      <asp:CheckBox Checked='<%#Eval("Estado")%>' onclick="return false;" runat="server"></asp:CheckBox>
                                  </div>
                                </div>
                                        </div>
                                      </div>
                                    </center>
                                  </div>

                                </div>


                              </form>


                              <div class="card-footer">
                                <center>
                                  <asp:Button ID="btnEliminarTurno" runat="server" class="btn btn-outline-danger btn-sm"
                                    Text="Eliminar"></asp:Button>

                                </center>
                              </div>

                            </div>
                          </div>
                        </div>
                      </ItemTemplate>
                    </asp:Repeater>
                  </div>


                </div>

              </div>


            </div>
          </div>
        </div>

        <%--    administar horarios--%>
        <div class="col-sm-12 col-md-6 col-lg-6 mb-3">
          <div class="card card border-primary">
            <div class="card-header">
              Administar horarios
            </div>
            <div class="card-body">
              <div class="row d-flex justify-content-around align-items-center">
                
                <div class="col-sm-12 col-md-12 col-lg-12 id=" HorarioSeleccionado">


                  <div class="card-group">
                    <asp:Repeater ID="RepeaterHorarios" runat="server">
                      <ItemTemplate>
                        <div class="col-sm-6 col-md-12 col-lg-6 col-xl-6">
                          <div class="card mx-1 my-1 border-bottom-info">
                            <asp:Label ID="lblIdHorario" runat="server" Visible="False" Text='<%#Eval("IdHorario")%>'>
                            </asp:Label>

                            <div class="card-body">
                              <h4 class="card-title"></h4>


                              <form>
                                <%--Hora--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold form-group">Hora: </p>
                                  </div>
                                  <div class="col">
                                    <asp:Label ID="lblHora" runat="server" Text='<%#Eval("Hora")%>'></asp:Label>
                                  </div>
                                </div>

                                <%--Lugar del turno--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold">Lugar del turno: </p>
                                  </div>
                                  <div class="col">
                                    <p class="font-italic">
                                      <asp:Label ID="Label4" runat="server" Text='<%#Eval("Descripcion")%>'></asp:Label>
                                    </p>
                                  </div>
                                </div>

                                <%--Estado--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold">Estado: </p>
                                  </div>
                                  <div class="col">
                                    <p class="font-italic">
                                      <asp:CheckBox Checked='<%#Eval("Estado")%>' onclick="return false;" runat="server"></asp:CheckBox>
                                  </div>
                                </div>




                              </form>


                              <div class="card-footer">
                                <center>
                                  <asp:Button ID="btnEditarHorario" runat="server" class="btn btn-outline-info btn-sm"
                                    Text="Editar horario"></asp:Button>

                                </center>
                              </div>

                            </div>
                          </div>
                        </div>
                      </ItemTemplate>
                    </asp:Repeater>
                  </div>


                  <%--Editar Horarios--%>
                  <div class="col-sm-12 col-md-12 col-lg-12">


                    <div class="row d-flex justify-content-around align-items-center mb-1 ">
                      <div>
                        <asp:Label ID="lblHorario" runat="server" class="form-text mx-1 my-1" Text=""></asp:Label>
                           <asp:Label ID="IdHorarioMod" runat="server" class="form-text mx-1 my-1"  Visible="false" Text="" Enabled="True"></asp:Label>
                      </div>
                    </div>
                    <div class="row d-flex justify-content-center align-items-center mb-1 ">
                      <div class="mx-1 my-1">
                        <asp:Button ID="btnDesactivar" Class="btn btn-danger" runat="server" Text="Desactivar" />
                      </div>
                      <br>
                      <div class="mx-1 my-1">
                        <asp:Button ID="btnActivar" Class="btn btn-success" runat="server" Text="Activar" />
                      </div>
                    </div>

                    <div class="row d-flex justify-content-center align-items-center ">
                      <div class="mx-1 my-1">
                        <asp:Button ID="btnEliminar" Class="btn btn-secondary" runat="server" Text="Eliminar" />
                      </div>
                      <br>

                    </div>
                    <hr>


                    <div class="row d-flex justify-content-center align-items-center mb-1">
                      <div>
                        <asp:TextBox ID="txtHorario" class="form-control my-2 mx-2" placeholder="Horario" runat="server"></asp:TextBox>
                      </div>
                      <div>
                        <asp:TextBox ID="txtDescripcion" placeholder="Lugar (opcional)" class="form-control mx-2" runat="server"></asp:TextBox>
                        </div>
                          <div>                          
                            <p class="font-italic alert-warning mt-3">La descripcion puede ser en donde se va a desarrolar la actividad, por ejemplo: Cancha N° 2, Consultorio Principal, Mesa 4, etc.</p>
                        </div>
                      
                      <br></br>
                      <div>
                        <asp:Button ID="btnAgregarHorario" class="btn btn-success" runat="server"
                          Text="Agregar horario" />
                      </div>
                    </div>


                  </div>
                </div>

              </div>
            </div>
          </div>


        </div>


        <%--Administrar Servicios--%>
        <div class="col-sm-12 col-md-6 col-lg-6">
          <div class="card card border-primary mr-3 mb-3">
            <div class="card-header">
              Administrar Servicios
            </div>
            <div class="card-body">
<div class="row d-flex justify-content-around align-items-center">
              <div class="col-sm-12 col-md-12 col-lg-12">
                

                       <div class="card-group">
                    <asp:Repeater ID="RepeaterServicios" runat="server">
                      <ItemTemplate>
                        <div class="col-sm-6 col-md-12 col-lg-6 col-xl-6">
                          <div class="card mx-1 my-1  border-bottom-success">
                            <asp:Label ID="lblIdServicio" runat="server" Visible="False" Text='<%#Eval("IdServicio")%>'>
                            </asp:Label>

                            <div class="card-body">
                              <h4 class="card-title"></h4>


                              <form>
                                <%--Hora--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold form-group">Descripción: </p>
                                  </div>
                                  <div class="col">
                                    <asp:Label ID="lblHora" runat="server" Text='<%#Eval("Descripcion")%>'></asp:Label>
                                  </div>
                                </div>

                                <%--Lugar del turno--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold">Precio: </p>
                                  </div>
                                  <div class="col">
                                    <p class="font-italic">
                                      <asp:Label ID="Label4" runat="server" Text='<%#Eval("Precio")%>'></asp:Label>
                                    </p>
                                  </div>
                                </div>

                                <%--Estado--%>
                                <div class="row">
                                  <div class="col">
                                    <p class="font-weight-bold">Estado: </p>
                                  </div>
                                  <div class="col">
                                    <p class="font-italic">
                                      <asp:CheckBox Checked='<%#Eval("Estado")%>' onclick="return false;"  runat="server"></asp:CheckBox>
                                  </div>
                                </div>

                              </form>

                              <div class="card-footer">
                                <center>
                                  <asp:Button ID="btnEliminarServicio" runat="server" class="btn btn-outline-danger btn-sm"
                                    Text="Eliminar Servicio"></asp:Button>

                                </center>
                              </div>

                            </div>
                          </div>
                        </div>
                      </ItemTemplate>
                    </asp:Repeater>
                  </div>

                  <hr>
                  </hr>

                
                  <div class="col-sm-12 col-md-12 col-lg-12">
                    <div class="row d-flex justify-content-center align-items-center mb-1">
                     <div>
                        <asp:TextBox ID="txtPrecioNuevo" placeholder="Precio" class="form-control" runat="server"></asp:TextBox>
                          </div>                 
                     <div>
                        <asp:TextBox ID="txtDescricpionServicio" placeholder="Descripción del Servicio" class="form-control" runat="server">
                        </asp:TextBox>
                      </div>
                      <br></br>
                     
 </div>
                       <div class="row d-flex justify-content-center align-items-center mt-3 mb-2" >
                            <asp:Button ID="btnAgregarServicio" class="btn btn-success mx-2" runat="server"
                          Text="Agregar Servicio" />
                       </div>      
                      
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
            <p>
              <h2>Agenda de turnos online para locales y clientes</h2>
              <p>
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

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
  </form>
</body>

</html>