<%-- 
    Document   : index_with_json.html
    Created on : 04/02/2021, 14:51:58
    Author     : Anthony Córdova Moreno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/Style.css" type="text/css"/>
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="css/principal.css" type="text/css"/>
  <title>Multiple Languages with Jquery and Json</title>
   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js">
        </script>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script type="text/javascript">
    var arrLang = {
      'en': {
        'sum': 'SUM',
        'subtraction': 'SUBTRACTION',
        'multiplication':'MULTIPLICATION',
        'division':'DIVICION',
        'root':'ROOT',
        'maximum': 'MAXIMUM OF ONE NUMBER',
        'minimum': 'MINIMUM OF ONE NUMBER',
        'potency':'POTENCY',
        'sinus':'SINUS',
        'cosine':'COSINE',
        'tangent':'TANGENT',
        'volume':'CIRCUMFERENCE VOLUME',
        'perimeter':'CIRCUMFERENCE PERIMETER',
        'logaritmo':'NEPERIAN LOGARITHM',
        'welcome': 'Welcome to MatePro!',
        'first':'Firts Number:',
        'second':'Second Number:',
        'here':'Here is the answer to your question!',
        'calcu':'Calculate',    
        'cube' : 'VOLUME OF A CUBE',
        'cilindrer':'VOLUME OF A CYLINDER',
        'piramide': "VOLUME OF A PYRAMID",
        'tetra': "VOLUME OF A TETRAHEDRON",
        'cone':"VOLUME OF A CONE"
      },
      'es': {
        'sum': 'SUMA',
        'subtraction': 'RESTA',
        'multiplication':'MULTIPLICACION',
        'division':'DIVICIÓN',
        'root':'RAIZ CUADRADA',
        'maximum': 'NUMERO MAXIMO',
        'minimum': 'NUMERO MINIMO',
        'potency':'POTENCIA',
        'sinus':'SENO',
        'cosine':'COSENO',
        'tangent':'TANGENTE',
        'volume':'VOLUMEN DE LA CIRCUNFERENCIA',
        'perimeter':'PRIMETRO DE LA CIRCUNFERENCIA',
        'logaritmo':'LOGARITMO NEPERIANO',
        'welcome': 'Bienvenidos a MatePro!',
        'first':'Primer Número:',
        'second':'Segundo Número:',
        'here':'¡Aqui esta la respuesta a tu pregunta!',
        'calcu':'Calcular',
        'cube' : 'VOLUMEN DE UN CUBO',
        'cilindrer':'VOLUMEN DE UN CILINDRO',
        'piramide':"VOLUMEN DE UNA PIRAMIDE",
        'tetra': "VOLUMEN DE UN TETRAEDRO",
        'cono':"VOLUMEN DE UN CONO"
      },
      'be': {
        'sum':'SUMMA',
        'subtraction':'SUBTRACT',
        'multiplication':'MONITOIMINTA',
        'division':'JAKELU',
        'root': 'NELJÄN JUURI',
        'maximum':'MAKSIMI NUMERO',
        'minimum':'VÄHIMMÄINEN NUMERO',
        'potency':'TEHO',
        'sinus':'SINUS',
        'cosine':'COSEMO',
        'tangent':'TANGENT',
        'volume':'YMPÄRISTÖÄENVOIMAKKUUS',
        'perimeter':'YMPÄRISTÖMITTARI',
        'logaritmo':'NEPERIAN LOGARITHM',
        'welcome': 'Tervetuloa MatePro!',
        'first': 'Ensimmäinen numero:',
        'second': 'Toinen numero:',
        'here':'Tässä on vastaus kysymykseesi!',
        'calcu':'Laske',
        'cube' : 'KUUTION TILAVUUS',
        'cilindrer':'SYLINTERIN TILAVUUS',
        'piramide': "PYRAMIDIN TILAVUUS",
        'tetra': "TETRAHEDRONIN TILAVUUS",
        'cone': "KARTION VOIMAKKUUS"
      },
      'ba': {
        'sum':'ZUM',
        'subtraction':'ODUZMI',
        'multiplication': 'MNOŽENJE',
        'division':'PODJELA',
        'root':'KVADRATNI KOREN',
        'maximum': 'MAKSIMALNI BROJ',
        'minimum': 'MINIMALNI BROJ',
        'potency': 'SNAGA',
        'sinus':'SINUS',
        'cosine': 'COSEMO',
        'tangent': 'TANGENT',
        'volume': 'OBIM OKOLINE',
        'perimeter':'PERIMETAR OKOLNOSTI',
        'logaritmo': 'NEPERIJSKI LOGARITAM',
        'welcome': 'Dobrodošli u MatePro!',
        'first':'Prvi broj:',
        'second': 'Drugi broj:',
        'here':'Evo odgovora na vaše pitanje!',
        'calcu':'Izračunaj',
        'cube' : 'OBIM KOCKE',
        'cilindrer':'OBIM CILINDRA'
      },
      'br': {
        'sum':'SOMA',
        'subtraction':'SUBTRAIR',
        'multiplication':'MULTIPLICAÇÃO',
        'division': 'DIVISÃO',
        'root':'ROOT SQUARE',
        'maximum': 'NÚMERO MÁXIMO',
        'minimum':'NÚMERO MÍNIMO',
        'potency':'PODER',
        'sinus':'SINE',
        'cosine':'COSSEMO',
        'tangent':'TANGENT',
        'volume': 'VOLUME DE CIRCUNFERÊNCIA',
        'perimeter': 'PERÍMETRO DE CIRCUNFERÊNCIA',
        'logaritmo':'LOGARITMO NEPERIANO',
        'welcome':'Bem-vindo ao MatePro!',
        'first': 'Primeiro número:',
        'second': 'Segundo número:',
        'here':'Aqui está a resposta à sua pergunta!',
        'calcu': 'Calcular',
        'cube' : 'VOLUME DE UM CUBO',
        'cilindrer':'VOLUME DE UM CILINDRO',
        'piramide': "VOLUME DE UMA PIRÂMIDE",
        'tetra': "VOLUME DE UM TETRAHEDRON",
        'cone': "VOLUME DE UM CONE"
      },
      'kr':{
        'sum': '합집합',
        'subtraction': '빼기',
        'multiplication':  '곱셈',
        'division': '분할',
        'root': '뿌리',
        'maximum': '한 숫자의 최대 값',
        'minimum': '최소 하나의 숫자',
        'potency': '힘',
        'sinus': '사인',
        'cosine':'코사인',
        'tangent': '접선',
        'volume': '둘레 볼륨',
        'perimeter': '둘레 둘레',
        'logaritmo':'NEPERIAN LOGARITHM',
        'welcome':'Mate Pro에 오신 것을 환영합니다!',
        'first':'첫 번째 숫자 :',
        'second':'두 번째 숫자 :',
        'here':'여기에 질문에 대한 답이 있습니다!',
        'calcu': '계산',
        'cube' : '큐브 볼륨',
        'cilindrer': '실린더 볼륨',
        'piramide': "피라미드의 부피",
        'tetra':"사면체의 부피",
        'cone':"콘의 양"
      }
    };

    // Process translation
    $(function() {
      $('.translate').click(function() {
        var lang = $(this).attr('id');

        $('.lang').each(function(index, item) {
          $(this).text(arrLang[lang][$(this).attr('key')]);
        });
      });
    });
  </script>
</head>
<body>
    <div class="loader-container">
            <div class="loader">
                
            </div>

        </div>
  <button id="en" class="translate">English</button>
  <button id="es" class="translate">SPANISH</button>
  <button id="be" class="translate">Belgium</button>
  <button id="ba" class="translate">Bosnia and Herzegovina</button>
  <button id="br" class="translate">Brazil</button>
  <button id="kr" class="translate">South Korea</button>
  

  <br>
  
        <script>
            $(window).on("load", function() {
                $(".loader-container").fadeOut(4000);
            });
        </script>
        
</body>
</html>
