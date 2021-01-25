//import { documentfragment } from "modernizr"



/*
const getLocalAsync = async (idPost) => {
    try {
        console.log("todo ok")
        //http://turnon.ar/wsTurnon.asmx/UsuariosBuscarTodos
        //http://turnon.ar/wsTurnon.asmx/TurnosBuscarPorIdLocal?IdLocal={idLocal}

        const resPost = await fetch(`http://turnon.ar/wsTurnon.asmx/TurnosBuscarPorIdLocal?IdLocal=1`)
        
        const Local = await resPost.json()
        
        console.log(Local)
        
    } catch(error){
  
    }


    //CargarUsers(resUser)
    //const contenedoUsuarios = document.getElementById("div-usuarios")

    const CargarUsers = (data) => {
        const template = document.getElementById("template-usuarios").content
        const fragment = new documentfragment()
        data.forEach(user => {
            console.log(data)

        })
    }

}

//getLocalAsync(1)
*/

ajax()
function ajax() {

    const http = new XMLHttpRequest();
    const url = 'http://turnon.ar/wsTurnon.asmx/UsuariosBuscarTodos'
    http.open("GET", url)
    http.send()
    http.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
            document.getElementById("contenido").innerHTML = this.responseText
        }
    }
}
