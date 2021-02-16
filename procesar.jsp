<%-- 
    Document   : procesar
    Created on : 03/02/2021, 17:54:27
    Author     : antho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>       
         <meta charset="UFT-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="css/principal.css">
         <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/Style.css" type="text/css"/>
        <link rel="stylesheet" href="css/menu.css">
        
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    
       
        <title>Resultados</title>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js">
        </script>
    </head>
        <div class="loader-container">
            <div class="loader">
                
            </div>

        </div> 
        
        <div class="banner_text">
         
            <div class="contenedor">
                 
              <div class="login">
                    <article class="fondo">
                        <br> <br> 
                        <center>
                            <h2 key="welcome" class="lang">
                                Welcome to MatePro!
                            </h2>
                            <h2 key="here" class="lang">
                                Here is the answer to your question!
                            </h2>
                            <br>
                             <br>
                            
        <% 
        double n1=0, n2=0, r=0;
        double  r1= 0, r2= 0, k= 0, n14 = 0, vol = 0;
        int calcu;
     
        n1= Double.parseDouble(request.getParameter("txtnum1"));

        n2= Double.parseDouble(request.getParameter("txtnum2")); 
        
        calcu =Integer.parseInt(request.getParameter("operation"));
        
        if(calcu == 15){
            if(n1 != calcu){
                out.print(" ");
            }if(n2 != calcu){
                out.print(" ");
            }else{
                out.print(" ");
            }
        }
        else if( calcu == 16){
            double iVolumen,iArista;
            iVolumen = Math.pow(n1, 3);
            out.println("El volumen de un cubo de arista " + Double.toString(n1) + " es de " + Double.toString(iVolumen));
            iArista = Math.pow(n2, 3);
            out.println("El volumen de un cubo de arista " + Double.toString(n2) + " es de " + Double.toString(iArista));
        }else if (calcu == 17){
        double cilindro, cilindro2;
        cilindro = Math.PI*(n1*n1)*n2;
        out.println("El volumen de un Cilindro de radio de: " + Double.toString(n1)+" y de uns haltura de: "+Double.toString(n2) + " es de: " + Double.toString(cilindro));
        cilindro2 = Math.PI*(n2*n2)*n1;
        out.println("El volumen de un Cilindro de radio de: " + Double.toString(n2)+" y de uns haltura de: "+Double.toString(n1) + " es de: " + Double.toString(cilindro2));
        }else if (calcu == 18){
            r1 = Math.sqrt(n1);
            r2 = Math.pow(n2, 3);
            k = r1/12;
            n14 = r2*k;
            out.println("El volumen de un tetraedro es: "+n14);
        }else if (calcu == 19){
            vol =(Math.PI*(n1*n1)*n2)/3;
            out.println("El volumen de un cono es: "+vol);
        }else if(calcu == 20){
            vol= (n1*n2)/3;
            out.println("El volumen de una Piramide es: "+vol);
        }
        %>
        
        <%
   
        int valor;
        n1= Double.parseDouble(request.getParameter("txtnum1"));
        n2= Double.parseDouble(request.getParameter("txtnum2"));     
        valor=Integer.parseInt(request.getParameter("operaciones"));
       if(valor == 0){
            if(n1 != valor){
                out.print(" ");
            }if(n2 != valor){
                out.print(" ");
            }else{
                out.print(" ");
            }
       }
       else if(valor==1){

           r=n1+n2;
           out.print("The sum is: " +r);
       }else if(valor==2){
           r=n1-n2;
           out.println("The subtraction is: " +r);

       }else if(valor==3){
           r=n1*n2;
           out.println("The product is: " +r);

       }else if(valor==4){
           r=n1/n2;
           out.println("The result of the division is: " +r);
       }else if(valor == 5){
           double Raíz = Math.sqrt(n1);
           double Raíz2 = Math.sqrt(n2);
           out.println("The Root Result is: " +Raíz);
           out.println(" ");
           out.println("The Root Result is: " +Raíz2);
       }else if(valor == 6){
           double Mayor = Math.max(n1,n2);
           out.println("The Greater Number is: " +Mayor);
       }else if(valor==7){
           double Menor = Math.min(n1,n2);
           out.print("The Lesser Number is: " +Menor);
       }else if(valor==8){
           double Potencia = Math.pow(n1,n2);
           out.print("The Potency is: " + Potencia);
       }else if(valor==9){
           double  Seno = Math.sin(n1);
           double  Seno2 = Math.sin(n2);
           out.println("The Sinus is: " + Seno);
           out.println(" ");
           out.println("The Sinus is: " + Seno2);
       }else if(valor==10){
           double coseno = Math.cos(n1);
           double coseno2 = Math.cos(n2);
           out.println("The Cocine is: " + coseno);
            out.println(" ");
           out.println("The Cocine is: " + coseno2);
       }else if(valor==11){
           double  Tangente = Math.tan(n1);
           double  Tangente2 = Math.tan(n2);
           out.println("The Tangent is: " + Tangente);
           out.println(" ");
           out.println("The Tangent is: " + Tangente2);
       }else if(valor==12){
            double  volumen=(4.0/3) * Math.PI * Math.pow(n1, 3);
            double  volumen2 =(4.0/3) * Math.PI * Math.pow(n2, 3);
            out.println("The volume of the circumference with a radius of: " + n1 + " is " + volumen);
            out.println(" ");
            out.println("The volume of the circumference with a radius of: " + n2 + " is " + volumen2);
 
       }else if(valor==13){
           double  perimetro, perimetro1;
            perimetro=2 * Math.PI * n1;
            out.println("The perimeter of the circumference with a radius of: " + n1 + " is " + perimetro);
            out.println(" ");
            perimetro1=2 * Math.PI * n2;
           out.println("The perimeter of the circumference with a radius of: " + n2 + " is " + perimetro1);
        }else if(valor == 14){
           double logaritmo = Math.log(n1);
           out.println("The Logaritmo Neperiano of: " + n1 + " is " + logaritmo );
           out.println(" ");
           double logaritmo2  = Math.log(n2);
           out.println("The Logaritmo Neperiano of: " + n2 + " is " + logaritmo2 );
        }
       %>
   
        <iframe id="lol" width="300" height="205" src="https://www.youtube.com/embed/oiv3p3A8mRE" 
                    frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                    allowfullscreen></iframe>
                            </center>
                        </article>

                           <a href="index.html"><button class="translate">Regresar</button></a>
                    </div>
                    
                </div>
                
       </div>
       <div class="animation_area">
          <ul class="box_area">
            <li></li><li></li><li></li><li></li><li></li>
            <li></li><li></li><li></li><li></li><li></li>
            <li></li><li></li><li></li><li></li>
            <li></li><li></li><li></li>
          </ul>
        </div>
         <div class="container-fooder">
                <footer>
                    <br> 
                    <hr>
                    <h4>
                        @CopyRigth MatePro 2021 - Todos los Derechos Reservados
                    </h4>
                    <br>
                </footer>
            </div>
        <script>
            $(window).on("load", function() {
                $(".loader-container").fadeOut(4000);
            });
        </script>
</html>