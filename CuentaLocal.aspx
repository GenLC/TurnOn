<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CuentaLocal.aspx.vb" Inherits="Turnos.CuentaAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <link href="css/sb-admin-2.css" rel="stylesheet" />
  <link href="css/sb-admin-2.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
  <script src="js/SweetAlert.js"></script>
  <!--font awesome con CDN-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

  <title> Mi Cuenta</title>
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
   <%-- mostrar img en pantalla--%>
  <script type="text/javascript">
        function showimagepreview(input) {

            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var im = document.getElementById("imgLogo")
                    im.setAttribute("src", e.target.result);
                    ResizeImage()             
                }
               reader.readAsDataURL(input.files[0]);
                  
            }
      }

      function ResizeImage() {
          if (window.File && window.FileReader && window.FileList && window.Blob) {
              var filesToUploads = document.getElementById('imgLogo').files;
              var file = filesToUploads[0];
              if (file) {

                  var reader = new FileReader();
                  // Set the image once loaded into file reader
                  reader.onload = function (e) {

                      var img = document.createElement("img");
                      img.src = e.target.result;

                      var canvas = document.createElement("canvas");
                      var ctx = canvas.getContext("2d");
                      ctx.drawImage(img, 0, 0);

                      var MAX_WIDTH = 400;
                      var MAX_HEIGHT = 400;
                      var width = img.width;
                      var height = img.height;

                      if (width > height) {
                          if (width > MAX_WIDTH) {
                              height *= MAX_WIDTH / width;
                              width = MAX_WIDTH;
                          }
                      } else {
                          if (height > MAX_HEIGHT) {
                              width *= MAX_HEIGHT / height;
                              height = MAX_HEIGHT;
                          }
                      }
                      canvas.width = width;
                      canvas.height = height;
                      var ctx = canvas.getContext("2d");
                      ctx.drawImage(img, 0, 0, width, height);

                      dataurl = canvas.toDataURL(file.type);
                      document.getElementById('imgLogo').src = dataurl;
                  }
                 reader.readAsDataURL(file);
                 
                 
              }

          } else {
              alert('The File APIs are not fully supported in this browser.');
          }
      }
  </script> 

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
              <a class="nav-link" ><asp:Button ID="btnAdministarLocal" Class="btn btn-outline-secondary btn-sm text-light" runat="server" Text="Administar local" /></a>
            </li>  
            <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnMiCuenta" Class="btn btn-outline-secondary btn-sm text-light" runat="server" Text="Mi cuenta" /></a>
            </li>           
               <li class="nav-item">
              <a class="nav-link" ><asp:Button ID="btnCerrarSesion" Class="btn btn-danger btn-sm text-light" runat="server" Text="Cerrar Sesión" /></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>


         <div class="container mt-5">

             <div class="row  mx-2">

                <%-- COLUMNA CUENTA--%>


                 <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">


                      <div class="row mt-4" id="Local">
                          <%-- Mi Local--%>
                          <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12" id="Div2" runat="server">
                            <h3 class="display-3 mt-3">
                              <center>Mi Local</center>
                            </h3>
                          </div>


                        </div>

                   <%--  Nombre del local--%>
                        <div class="row d-flex align-content-center justify-content-center ">
                             <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12">
                              <div class="card border-left-primary shadow h-100 py-2 ">
                                <div class="card-body">
                                  <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Nombre del Local:</div>

                                      <asp:Label ID="lblNombreLocal" class="h5 mb-0 font-weight-bold text-black-500" runat="server" Text="">
                                      </asp:Label>
                                    </div>
                                    <div class="col-auto">                                        
                                      <i class="fas fa-store fa-2x text-text-300"></i>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>

                        <hr class="my-3">

                        <div class="row  d-flex align-content-center justify-content-center">
                        
                           

                           <%-- Logo del local--%>
                            <div class="row d-flex align-content-center justify-content-center w-100">                                
                            <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12">
                                <div class="card border-left-primary shadow h-auto mx-4 my-4">
                                  <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                      <div class="col mr-2">
                                        <asp:Label ID="Label7"
                                          class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                          runat="server" Text="Logo del Local"></asp:Label>

                                        <br />
                                        <hr />

                                         
                                        
                                                                                        
                                          <div class="form-group row w-auto">
                                              
                                            <asp:FileUpload ID="FileImg"  runat="server" style="margin-bottom: 15px;" onchange="showimagepreview(this)" />
                                             
                                                
                                          </div>
                                            
                                           <div class="form-group row d-flex align-content-center justify-content-center">
                                              
                                              <img id="imgLogo" alt="" src="" class="img-thumbnail" runat="server" style="width:15vh; height:15vh;" />
                                                
                                          </div>
                                        
                                           <div class="form-group row">
                                               <asp:Button ID="btnGuardarLogo" class="btn btn-primary" runat="server" Text="Guardar nuevo logo" />
                                          
                                          </div>

                                      </div>

                                    </div>
                                     <%-- <div class="col-auto">
                                         
                                        <i class="fas fa-image fa-2x text-blue-300 ml-2"></i>
                                      </div>--%>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div>

                                 

                                <%--Cambiar Nombre del local--%>                                               
                              <div class="row d-flex align-content-center justify-content-center w-100">                                                                                    
                              <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 mb-4">
                                <div class="card border-left-success shadow h-100 mx-4">
                                  <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                      <div class="col mr-2">
                                        <asp:Label ID="Label4"
                                          class="text-xs font-weight-bold text-success text-uppercase mb-1"
                                          runat="server" Text="Modificar Nombre del Local"></asp:Label>

                                        <br />
                                        <hr />
                                            
                                          <div class="form-group ">
                                           
                                            
                                              <div>
                                                <asp:TextBox ID="txtNombreLocalNuevo"  placeholder="Nuevo nombre del Local" class="form-control mx-2" type="text"   aria-describedby="basic-addon1" runat="server"></asp:TextBox>
                                             </div>
                                                <div>
                                                    <asp:Button ID="btnGuardarNombreLocal" class="btn btn-success ml-2 mt-2 " runat="server" Text="Guardar" />
                                              
                                                  
                                              </div>                                              
                                            </div>

                                      </div>
                                      <div class="col-auto">                                       
                                        <i class="fas fa-font fa-2x text-text-300 ml-2"></i>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                              </div>

                                <%--Direccion del local--%>
                             <div class="row d-flex align-content-center justify-content-center w-100">                                
                            <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 mb-12 w-100">
                                <div class="card border-left-primary shadow h-auto mx-4 my-4">
                                  <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                      <div class="col mr-2">
                                        <asp:Label ID="Label5"
                                          class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                          runat="server" Text="Direccion del Local"></asp:Label>

                                        <br />
                                        <hr />
                                                <div class="form-group row">
                                                    <asp:Label ID="lblLocalidadActual" runat="server" Text=""></asp:Label>
                                          </div> 
                                          <hr />
                                           <div class="form-group row">
                                               <asp:Label ID="Label3" lass="form-control" runat="server" Text="Nueva Localidad: "></asp:Label>
                                          </div>
                                          <div class="form-group row">
                                              <asp:DropDownList ID="cboLocalidades" runat="server"></asp:DropDownList>
                                          </div>
                                           <div class="form-group row">
                                              <asp:TextBox ID="txtCalle" class="form-control" placeholder="Calle" runat="server"></asp:TextBox>                                            
                                          </div>
                                         <div class="form-group row">
                                              <asp:TextBox ID="txtNumero" class="form-control"  placeholder="Numero" runat="server"></asp:TextBox>                                            
                                          </div>
                                           <div class="form-group row">
                                               <asp:Button ID="btnGuardarDireccion" class="btn btn-primary" runat="server" Text="Actualizar datos" />                                            
                                          </div>

                                      </div>
                                      <div class="col-auto ml-3">
                                         
                                        <i class="fas fa-map fa-2x text-blue-300 ml-1"></i>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div> 

                            
                                <%--Cambiar Descricpion del local--%>                                               
                             <%--  <div class="row d-flex align-content-center justify-content-center w-100 ">                                                                                    
                              <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 mb-4">
                                <div class="card border-left-info shadow mx-4">
                                  <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                      <div class="col mr-2">
                                        <asp:Label ID="Label8"
                                          class="text-xs font-weight-bold text-info text-uppercase mb-1"
                                          runat="server" Text="Descripción del local"></asp:Label>

                                        <br />
                                        <hr />
                                            
                                          <div class="form-group ">
                                           
                                            
                                              <div>
                                                <asp:TextBox ID="txtDescricpión"  placeholder="Descripcion" Rows="3" class="form-control mx-2" type="text"   aria-describedby="basic-addon1" runat="server"></asp:TextBox>
                                             </div>
                                                <div>
                                                    <asp:Button ID="btnGuardarDescipcion" class="btn btn-success ml-2 mt-2 " runat="server" Text="Guardar" />
                                              
                                                  
                                              </div>
                                              <div>
                                                  <asp:Button ID="btnEditarDescripcion" class="btn btn-outline-secondary ml-2 mt-2" runat="server" Text="Editar" />
                                                  
                                              </div>
                                            </div>

                                      </div>
                                      <div class="col-auto">   
                                          
                                        <i class="fas fa-comment-medical fa-2x text-text-300 ml-2"></i>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                              </div>--%>   


                        <%--Contacto Telefono--%>
                             <div class="row d-flex align-content-center justify-content-center w-100">                                                                                    
                              <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 mb-4">
                                <div class="card border-left-success shadow  mx-4">
                                  <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                      <div class="col mr-2">
                                        <asp:Label ID="Label6"  class="text-xs font-weight-bold text-success text-uppercase mb-1"
                                          runat="server" Text="Número de contacto"></asp:Label>

                                        <br />
                                        <hr />  
                                                 <div class="form-group ">
                                             <div>
                                         
                                                 <asp:TextBox ID="txtNumeroTelefono" placeholder="Número teléfono" class="form-control mx-2" runat="server"> </asp:TextBox>
                                             </div>
                                               
                                              <div>                                                
                                                  <asp:Button ID="btnGuardarTelefono" class="btn btn-success ml-2 mt-2" runat="server" Text="Guardar" />
                                                  <asp:Button ID="btnElimarTelefono" class="btn btn-outline-secondary ml-2 mt-2" runat="server" Text="Eliminar" />
                                              </div>
                                                      <div>                                                
                                                  
                                              </div>
                                            
                                            </div>

                                      </div>
                                      <div class="col-auto">
                                          
                                        <i class="fas fa-phone fa-2x text-text-300 ml-2"></i>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>

                              </div>
                         </div>
                


                 <%--COLUMNA LOCAL--%>
               
                  
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                    <%--Mi cuenta--%>
                        <div class="row mt-4" id="Cuenta">
                           
                          <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12" id="Div1" runat="server">
                            <h3 class="display-3 mt-3">
                              <center>Mi Cuenta</center>
                            </h3>
                          </div>


                        </div>

                    <%--Correo--%>
                          <div class="row d-flex align-content-center justify-content-center w-100">
                             <div class="col-sm-12 col-md-6 col-xl-6 col-md-3  ">
                              <div class="card border-left-primary shadow h-100 py-2 ">
                                <div class="card-body ">
                                  <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Correo:</div>

                                      <asp:Label ID="lblCorreo" class="h5 mb-0 font-weight-bold text-black-500" runat="server" Text="">
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
                             <div class="row d-flex align-content-center justify-content-center w-100">                                
                            <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 mb-12 ">
                                <div class="card border-left-primary shadow h-auto mx-4 my-4">
                                  <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                      <div class="col mr-2">
                                        <asp:Label ID="Label1"
                                          class="text-xs font-weight-bold text-primary text-uppercase mb-1"
                                          runat="server" Text="Cambiar contraseña"></asp:Label>

                                        <br />
                                        <hr />
                                                                                        
                                          <div class="form-group row">
                                              <asp:TextBox ID="txtContraseñaActual" class="form-control" type="password" placeholder="Contraseña actual" runat="server"></asp:TextBox>                                            
                                          </div>
                                           <div class="form-group row">
                                              <asp:TextBox ID="txtContraseñaRepetir" class="form-control" type="password" placeholder="Repetir contraseña" runat="server"></asp:TextBox>                                            
                                          </div>
                                         <div class="form-group row">
                                              <asp:TextBox ID="txtContraseñaNueva" class="form-control" type="password" placeholder="Nueva contraseña" runat="server"></asp:TextBox>                                            
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




                                <%--Desactivar CUENTA--%>                                               
                              <div class="row d-flex align-content-center justify-content-center w-100">                                                                                    
                              <div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 ">
                                <div class="card border-left-danger shadow h-100  mx-4 ">
                                  <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                      <div class="col mr-2">
                                        <asp:Label ID="DesactivarCuenta"
                                          class="text-xs font-weight-bold text-danger text-uppercase mb-1"
                                          runat="server" Text="Desactivar Local"></asp:Label>

                                        <br />
                                        <hr />
                                                 <div class="form-group ">
                                             <div>
                                                <asp:TextBox ID="txtContraseñaDesactivar"   class="form-control mx-2" type="password" placeholder="Contraseña"  aria-describedby="basic-addon1" runat="server"></asp:TextBox>
                                             </div>
                                                <div>
                                                     <asp:Button ID="btnDesactivarCuenta" class="btn btn-danger ml-2 mt-2" runat="server" Text="Desactivar" />
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
