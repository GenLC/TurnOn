<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Pruebas.aspx.vb" Inherits="Turnos.Pruebas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <link href="css/sb-admin-2.css" rel="stylesheet" />
  <link href="css/sb-admin-2.min.css" rel="stylesheet" />
  <!--font awesome con CDN-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src="js/SweetAlert.js"></script>
  <title>Turn On</title>
  <link rel="icon" href="https://www.flaticon.es/svg/static/icons/svg/3602/3602588.svg" type="image/x-icon">
  
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class ="row d-flex" id="div-usuarios">
               <button class="btn btn-info w-100 mt-4" onclick="traer()">Obtener local</button> 
            </div>
            <div class="mt-5" id="contenido">
           
            </div>
        </div>
    </form>


    <template id="template-usuarios">
        <div class="col-12 col-md-4">
 <div class="card">
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        </div>
       
    </template>
</body>
     <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
     <script src="js/App.js"></script>
</html>
