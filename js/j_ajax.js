   var resultado=document.getElementById("info");
     function mostrarUsuario(nombre){
         var xmlhttp;

         if(window.XMLHttpRequest){
             xmlhttp = new XMLHttpRequest();
         }else{
             xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
         }
         if(nombre.length === "") {
             resultado.innerHTML = "";
         }else{
             xmlhttp.onreadystatechange = function(){
                 if (xmlhttp.readyState === 4 && this.status === 200) {
                     resultado.innerHTML=xmlhttp.responseText;
                 }
             }
             xmlhttp.open("GET","consulta.php?nombre="+nombre,true);
             xmlhttp.send();
         }
     }