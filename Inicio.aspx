<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="Turnos.Agenda" %>

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
  <!--font awesome con CDN-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src="js/SweetAlert.js"></script>
  <title>Turn On</title>
  <link rel="icon" href="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" type="image/x-icon">
  <style>
      /*  .carousel-item.active,
.carousel-item-next,
.carousel-item-prev {
  display: block;
}*/
      .borde {
          border-style: solid;
          border-width: 1px;
      }

      .bordeAzul {
          border-style: solid;
          border-width: 2px;
          border-color: darkcyan;
      }

      .img-fluid {
          max-width: 100%;
          height: auto;
      }
      .img-resize {
   
       max-height:50%;
      max-width: 100%;

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
    

      <!-- Slider -->    
    <div class="row mb-4 ">
      <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
          <div class="carousel-item active " style="height:auto; Width:100vw;">
            <center>       
                <img src="https://i.postimg.cc/9FNm2z7f/5-3.jpg" class="d-block  sliderimg "  alt="...">             

              <div class="carousel-caption d-none d-block ">
                <h5 class="font-weight-bold ">Turn On</h5>
                <p class="font-weight-bold ">Agenda virtual 100% online</p>
              </div>
            </center>
          </div>
          <div class="carousel-item " style="height:auto; Width:100vw;">
            <center>
               
                    <img src="https://i.postimg.cc/28LR1YM1/1-2.png" class="d-block sliderimg"  alt="...">
              
              
              <div class="carousel-caption d-none d-block">
                <h5 class="font-weight-bold " >Turn On</h5>
                <p class="font-weight-bold ">Gestioná tus tunos de manera remota</p>
              </div>
                
                 </center>
          </div>
        
          <div class="carousel-item " style="height:auto; Width:100vw;">
            <center>
              <img src="https://i.postimg.cc/pVYkk6js/4-3.png" class="d-block sliderimg " alt="...">
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
   
    
        

    <div class="container mt-4 ">

        <%--Registro--%>
      <div class="jumbotron bg-light m-xl-3 m-lg-3 m-md-3 m-sm-3 mt-4  mb-4">
          <h3 class="display-3">Turn On</h3>
          <p class="lead" <h3>Luego de registrarse podrá solicitar un turnos y acceder al listado completo de locales cuando desee</h3>
          </p>
        

      

       
           
          <div class="row d-flex align-content-center align-items-center ">
              <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 ">
                  <center>
                  <asp:Button ID="btnRegistro" class="btn btn-success btn-lg  btn-block my-2" runat="server"
                    Text="Registrarme" />
                </center>

              </div>
              <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                  <center>
                  <a class="btn btn-outline-info btn-lg  btn-block my-2" href="Login.aspx" role="button">Iniciar
                    Sesión</a>
                </center>

              </div>

          </div>


          <div class="row d-flex align-content-center align-items-center ">
              <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 ">
                  <asp:Button ID="btnRegistrarLocal" class="btn btn-primary btn-lg my-2 btn-lg btn-block"
                      runat="server" Text="Registrar mi Local" />
              </div>

          </div>


         


        </div>

       <%-- SERVICIOS & FUNCIONAMIENTO --%>
       <div class="row m-xl-3 m-lg-3 m-md-3 m-sm-3 alert alert-info justify-content-sm-center mt-4  mb-4">
                <div class="d-flex justify-content-center  w-100 mb-3">
            <h4 class="display-5 ">SERVICIOS & FUNCIONAMIENTO  </h4>
                </div>
             
            

             <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3  d-flex justify-content-around align-items-center p-2 mx-1 my-1"> 
                 <div class="col-6">  <asp:Image ID="Image1" Class="img-fluid 20vh 20vw " src="https://www.flaticon.com/svg/static/icons/svg/1198/1198365.svg" runat="server" /></div>
                 <div class="col-6  text-gray-900">Centros deportivos </div>
             </div>
                <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3  d-flex justify-content-around align-items-center p-2 mx-1 my-1"> 
                 <div class="col-6">  <asp:Image ID="Image6" Class="img-fluid 20vh 20vw" src="https://www.flaticon.es/svg/static/icons/svg/1057/1057317.svg" runat="server" /></div>
                 <div class="col-6  text-gray-900">Estética </div>
             </div>
               <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3  d-flex justify-content-around align-items-center p-2 mx-1 my-1"> 
                 <div class="col-6">  <asp:Image ID="Image3" Class="img-fluid 20vh 20vw" src="https://www.flaticon.es/svg/static/icons/svg/619/619051.svg" runat="server" /></div>
                 <div class="col-6  text-gray-900">Consultortios </div>
             </div>
                <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3  d-flex justify-content-around align-items-center p-2 mx-1 my-1"> 
                 <div class="col-6">  <asp:Image ID="Image4" Class="img-fluid 20vh 20vw" src="https://www.flaticon.es/svg/static/icons/svg/2495/2495949.svg" runat="server" /></div>
                 <div class="col-6  text-gray-900">Trámites </div>
             </div>
                <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3  d-flex justify-content-around align-items-center p-2 mx-1 my-1"> 
                 <div class="col-6">  <asp:Image ID="Image5" Class="img-fluid 20vh 20vw" src="https://www.flaticon.es/svg/static/icons/svg/2818/2818287.svg" runat="server" /></div>
                 <div class="col-6  text-gray-900">Odontologos </div>
             </div>
                 
                <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3  d-flex justify-content-around align-items-center p-2 mx-1 my-1"> 
                 <div class="col-6"> <asp:Image ID="Image2" Class="img-fluid 20vh 20vw" src="https://www.flaticon.com/svg/static/icons/svg/1026/1026713.svg" runat="server" /> </div>
                 <div class="col-6  text-gray-900">Gym </div>
             </div>

         </div>

        <%--Locales adheridos--%>
       <div ID="DivNustrosClientes" runat="server" class="row m-xl-3 m-lg-3 m-md-3 m-sm-3 alert alert-info bg-light flex-column align-content-center mt-4  mb-4" >
           <center><h3 class="font-weight-bolder ">Nuestros clientes</h3></center>  
           <hr />
           <div class="row ">
               
                                 
                 <asp:Repeater ID="RepeaterImgLocales" runat="server">

              <ItemTemplate>
                <div class="col-sm-6 col-md-4 col-lg-4 col-xl-4 my-2 d-flex align-items-center flex-column">
                      <div class="d-flex justify-content-center  w-50 mh-50">                      
                    <img class="rounded img-fluid d-block "  src='<%#Eval("RutaLogo")%>' alt="error al cargar imagen">
                       </div>
                    <asp:Label ID="lblIdLocal" runat="server" Text='<%#Eval("IdLocal")%>' Visible="False"></asp:Label>
                    <div class="card-body">
                      <h4 class="card-title ">
                         
                            <asp:Label ID="lblNombreLocal" runat="server" Text='<%#Eval("Nombre")%>'></asp:Label>
                          
                        
                      </h4>                       
                    
                    </div>                   
                
                </div>



              </ItemTemplate>

            </asp:Repeater>
                   
             

              
           </div>
        </div>

        <%--Benefcios--%>
        <div class="row  m-xl-3 m-lg-3 m-md-3 m-sm-3 p-3 bg-light mt-4  mb-4">
            <div class="row d-flex align-items-center">


                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                    <div id="carouselControls2" class="carousel slide alert alert-info" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="https://i.postimg.cc/J72932z5/store-984393-960-720.jpg"
                                    alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="https://i.postimg.cc/Y2RSpk8q/office-1639675-960-720.jpg"
                                    alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100"
                                    src="https://i.postimg.cc/c1ncj9cm/beauty-salon-3277314-960-720.jpg"
                                    alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselControls2" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselControls2" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>

                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                    <div class="jumbotron alert-info">
                        <h1 class="display-4">Beneficios</h1>
                        <p class="lead">Te presentamos algunos de las ventajas que ofrece nuestro sistema de turnos</p>
                        <hr class="my-2">
                        <p>
                        </p>
                        <p class="lead">
                        </p>
                    </div>


                </div>
            </div>

            <div class="row d-flex justify-content-around align-items-center">


                <div class="alert alert-warning mx-1 my-2" role="alert">
                    <h4 class="alert-heading"></h4>
                    <strong>Optimizá tu tiempo al máximo</strong>
                </div>

                <div class="alert alert-warning mx-1 my-2" role="alert">
                    <h4 class="alert-heading"></h4>
                    <strong>Adminsitar tus clientes y turnos</strong>
                </div>

                <div class="alert alert-warning  mx-1 my-2" role="alert">
                    <h4 class="alert-heading"></h4>
                    <strong>Gestión completamente online</strong>
                </div>


                <div class="alert alert-warning  mx-1 my-2" role="alert">
                    <h4 class="alert-heading"></h4>
                    <strong>Mejor experiencia para tus clientes</strong>
                </div>
                <div class="alert alert-warning  mx-1 my-2" role="alert">
                    <h4 class="alert-heading"></h4>
                    <strong>Ahorra tiempo en el mostrador</strong>
                </div>
                <div class="alert alert-warning  mx-1 my-2" role="alert">
                    <h4 class="alert-heading"></h4>
                    <strong>Ampliá tu alcance</strong>
                </div>

            </div>


        </div>     


        <%--Como funciona--%>
       <%-- <div class=" row d-flex align-content-center align-items-center borde ">
            <div class="col m-xl-3 m-lg-3 m-md-3 m-sm-3  px-0  py-0">
                <div class="jumbotron alert alert-info">
                    <h1 class="display-4">¿Cómo funciona?</h1>
                    <p class="lead">Turn On es útil tanto para locales como para personas que necesiten solicitar turnos</p>
                    <hr class="my-2">

                    <div class="row">


                        <div class="col-sm-12 col-md-6 col-lg-6 borde">
                            <h1 class="display-4">Locales </h1>
                            <br />
                            <p>
                                Registrá tu local ingresando algunos datos esenciales como:
                                <p class="font-weight-bold">
                                    Nombre del
                    local, ubicación y rubro.
                                </p>
                                Una vez registradoaccederás al menu para gestionar el horario de
                  atención, tus clientes y precios
                            </p>
                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-6 borde">
                            <h1 class="display-4">Clientes</h1>
                            <br />
                            <p>
                                Para solicitar turnos en tus locales preferidos, necesitarás registrarte con un mail y una contraseña
                            </p>
                        </div>

                    </div>
                </div>



            </div>
        </div>--%>


        <div class=" row d-flex align-content-center   alert alert-info  m-xl-3 m-lg-3 m-md-3 m-sm-3 pb-3">
            <div class="row">
                <div class="col">
                     <h1 class="display-4">¿Cómo funciona?</h1>
                     <p class="lead ">Turn On es útil tanto para locales como para personas que necesiten solicitar turnos</p>
                    
                </div>
                <hr />
            </div>
            <hr class="my-2">
            <div class="col-sm-12 col-md-6 col-lg-6 ">
                <h1 class="display-4">Locales </h1>
                <br />
                <p class="font-weight-bold">
                   
                </p>
           
            
                                 
                  <%--que necesita mi local--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse15" aria-expanded="false" aria-controls="collapse15">
                                ¿Puedo personalizar los horarios de turnos?
                                </button>
                 <div class="collapse my-2" id="collapse15">
                                <div class="card card-body mt-2">
                               <p>Si. El sistema tiene la capacidad de adaptarse a sus horarios y turnos</p>
                                </div>
                                </div>

                <%--que necesita mi local--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                ¿Qué necesito para registrar mi local?
                                </button>
                 <div class="collapse my-2" id="collapse1">
                                <div class="card card-body mt-2">
                               <p>Podés registrar tu local con solo algunos datos como el nombre, su ubicación y el rubro en el que se desempeña</p>
                                </div>
                                </div>

                 <%--necesito sitio web--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                ¿Necesito tener un sitio web?
                                </button>
                 <div class="collapse my-2" id="collapse2">
                                <div class="card card-body mt-2">
                               <p>No. TurnOn te brinda la posibilidad de mostrarse de manera online a todo el mundo </p>
                                </div>
                                </div>
                   
                <%--Vacaciones--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse4" aria-expanded="false" aria-controls="collapse4">
                                ¿Puedo desactivar mis horarios cuando me voy de vacaciones?
                                </button>
                 <div class="collapse my-2" id="collapse4">
                                <div class="card card-body mt-2">
                               <p>Si. En cualquier momento que desee puede cancelar la atención.</p>
                                </div>
                                </div>
               
                 <%--Cancelar Turnos--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse5" aria-expanded="false" aria-controls="collapse5">
                                Cancelar turnos una vez solicitado
                                </button>
                 <div class="collapse my-2" id="collapse5">
                                <div class="card card-body mt-2">
                               <p>TurnOn avisará al usuario que solicitó el turno una vez que el turno haya sido cancelado</p>
                                </div>
                                </div>

                 <%-- PC--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse6" aria-expanded="false" aria-controls="collapse6">
                                ¿Necesito una computadora de escritorio en mi local?
                                </button>
                 <div class="collapse my-2 mb-4" id="collapse6">
                                <div class="card card-body mt-2">
                               <p>No, el sistema puede trabajar perfectamente en dispositivos móviles</p>
                                </div>
                                </div>


            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 ">
                <h1 class="display-4">Clientes</h1>
                <br />
                <p class="font-weight-bold">
                   
                </p>
            

                     <%-- como solicitar turnos--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse7" aria-expanded="false" aria-controls="collapse7">
                                ¿Cómo puedo solicitar turnos?
                                </button>
                 <div class="collapse my-2 mb-4" id="collapse7">
                                <div class="card card-body mt-2">
                               <p>Luego de registrarte podrás acceder al listado completo de locales y reservar tu turno</p>
                                </div>
                                </div>

                 <%-- ¿que necesito para registrarme--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse9" aria-expanded="false" aria-controls="collapse9">
                                ¿Qué necesito para registrarme?
                                </button>
                 <div class="collapse my-2 mb-4" id="collapse9">
                                <div class="card card-body mt-2">
                               <p>Solo con tu email podés acceder a todos los locales/p>
                                </div>
                                </div>


                  <%-- commo encotnrar mis locaes--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse8" aria-expanded="false" aria-controls="collapse8">
                                ¿Cómo puedo encontrar un local?
                                </button>
                 <div class="collapse my-2 mb-4" id="collapse8">
                                <div class="card card-body mt-2">
                               <p>Solo con saber el nombre, el rubro o la localidad a la que pertenezca el local, podrás encontrarlo</p>
                                </div>
                                </div>
                 <%-- cancelar reservas--%>
                 <button class="btn btn-info my-2" type="button" data-toggle="collapse" data-target="#collapse10" aria-expanded="false" aria-controls="collapse10">
                                ¿Puedo cancelar mi reserva luego de pedirla?
                                </button>
                 <div class="collapse my-2 mb-4" id="collapse10">
                                <div class="card card-body mt-2">
                               <p>Si, en todo momento</p>
                                </div>
                                </div>

            </div>
        </div>

        <%--COVID--%>
       <div class=" row d-flex align-content-center align-items-center mt-4  mb-4 p-2 bg-light m-xl-3 m-lg-3 m-md-3 m-sm-3">
          <center>

           <div class="card-header">
    COVID-19 (Coronavirus)
  </div>
          </center>
            <div class="card-body">

                <p class="card-text text-justify" >
                    <p class="font-weight-bold">En el marco de las medidas implementadas por el Gobierno Nacional a raíz de la PANDEMIA DE COVID-19 (Coronavirus) </p>
                    Turn On ofrece la seguridad de que todos los clientes respeten el límite máximo de personas por local evitando aglomeraciones y
                    considerando los diferentes impactos en la dinámica de transmisión 
                    del virus, la diversidad geográfica, socioeconómica y demográfica establecido en el Decreto 875/2020.


                </p>

            </div>

       </div>



     <%--Contacto--%>
      <div class="row mb-5 mt-3 d-flex align-items-center alert alert-primary alert alert-info m-xl-3 m-lg-3 m-md-3 m-sm-3">
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
                <%--Contacto--%>
                <div class="container">
    <h2 class="text-center">¿Tienes alguna duda?</h2>
	<div class="row justify-content-center">
		                 

                    <form action="mail.php" method="post">
                        <div class="card border-primary rounded-0">
                            <div class="card-header p-0">
                                <div class="bg-info text-white text-center py-2">
                                    <h3><i class="fa fa-envelope"></i> Contactanos</h3>
                                    <p class="m-0">Con gusto te ayudaremos</p>
                                </div>
                            </div>
                            <div class="card-body p-3">

                                <!--Body-->
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                        </div>
                                    <asp:TextBox ID="txtNombreApellido" class="form-control" placeholder="Nombre y Apellido"  runat="server"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                                        </div>
                                        <asp:TextBox ID="txtEmail" type="email" class="form-control" placeholder="ejemplo@gmail.com" runat="server"></asp:TextBox>
                                        
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                                        </div>
                    <asp:TextBox ID="txtConsutla"  cols="20"  class="form-control" placeholder="Envianos tu Mensaje" rows="2" runat="server"></asp:TextBox>
                                        
                                   
                                    </div>
                                </div>

                                <div class="text-center">
                                    
                                <asp:Button ID="btnEnviar" class="btn btn-info btn-block rounded-0 py-2" runat="server" Text="Enviar" />
                                </div>
                            </div>

                        </div>
                    </form>
                    <!--Form with header-->


	</div>
</div>

            </div>
                    <%--slider contacto--%>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
        <div id="carouselExampleControls" class="carousel slide alert alert-info" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="https://i.postimg.cc/jdGV7mkp/machines-91849-960-720.jpg"
                  alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="https://i.postimg.cc/zfLYH5JY/diferencias-pelotas-tenis-padel-1-1.jpg"
                  alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100"
                  src="https://i.postimg.cc/T3KW1LWd/photo-1598399615261-adafbbb044fc-ixlib-rb-1-2.jpg"
                  alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
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
            <h6 class="text-uppercase mb-4 font-weight-bold">Turn On</h6>
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