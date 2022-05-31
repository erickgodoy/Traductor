<?php
    include "traducir.php";
    include "cabecera.php";
?>
    <section>
        <p class="tema">Traductor Español-Ingles</p>
        <article>
            <form action="esp_ing.php" method="POST">
                <div class="ingresar">
                    <input type=" text" name="palabra" placeholder="Palabra" onkeyup="mostrarUsuario(this.value)" autocomplete="off"><br>
                </div>
                
                <div class="resultado">
                    <input  type="text" name="traduccion" placeholder="Traduccion" value="<?php if(isset($resultado)){ echo $resultado; } ?>">
                </div> 
                <input type="submit" name="traducir" value="Traducir"> 
                <div class="sugerencia" id="info"></div>
            </form>
        </article>
    </section>

    <div id="switch" style="
    height: 75px; 
    width: 75px; 
    position: fixed;
    right: 150px; 
    bottom: 150px; 
    background-size: contain;
    cursor: pointer;
    box-shadow: rgba(0, 0, 0, 0.25) 0px 1px 3px; 
    z-index: 9999;    "><a href="ing_esp.php"><img src="./image/descarga.png" alt=""></a></div>
    
<script type="text/javascript" src="js/j_ajax.js"></script>
</body>
</html>
