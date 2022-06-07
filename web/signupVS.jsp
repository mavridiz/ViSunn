<%@page import="javax.xml.bind.ParseConversionEvent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <title>Registro</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://cdn.tailwindcss.com"></script>
        <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
        <link rel='stylesheet' href='app.css'>
        <link rel='stylesheet' href='components-v2.css'>
    </head>
    <body  class="h-full bg-gray-800">
        <div class="container mx-auto sm:px-6 lg:px-8">
            <div class="hidden sm:block sm:absolute sm:inset-0" aria-hidden="true">
      <svg class="absolute bottom-0 right-0 transform translate-x-1/2 mb-48 text-gray-700 lg:top-0 lg:mt-28 lg:mb-0 xl:transform-none xl:translate-x-0" width="364" height="384" viewBox="0 0 364 384" fill="none">
        <defs>
          <pattern id="eab71dd9-9d7a-47bd-8044-256344ee00d0" x="0" y="0" width="20" height="20" patternUnits="userSpaceOnUse">
            <rect x="0" y="0" width="4" height="4" fill="currentColor" />
          </pattern>
        </defs>
        <rect width="364" height="384" fill="url(#eab71dd9-9d7a-47bd-8044-256344ee00d0)" />
      </svg>
    </div>
    <div x-data="{ isOpen: false }" class="relative pt-6 pb-16 sm:pb-24">
        <div>
        <nav class="relative max-w-7xl mx-auto flex items-center justify-between px-4 sm:px-6" aria-label="Global">
          <div class="flex items-center flex-1">
            <div class="flex items-center justify-between w-full md:w-auto">
              <a href="#">
                <span class="sr-only">ViSunn</span>
                <img class="h-8 w-auto sm:h-10" src="img/ViSunn.svg" alt="ViSunn">
              </a>
              <div class="mr-2 flex items-center md:hidden">
                <button type="button" @click="isOpen = !isOpen" class="bg-gray-800 rounded-md p-2 inline-flex items-center justify-center text-gray-400 hover:bg-gray-700 focus:outline-none focus:ring-2 focus-ring-inset focus:ring-white" aria-expanded="false">
                  <span class="sr-only">Open main menu</span>
                  <!-- Heroicon name: outline/menu -->
                  <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                  </svg>
                </button>
              </div>
            </div>
            <div class="flex flex-wrap hidden space-x-10 md:flex md:ml-10">
              <a href="heroVS.jsp" class="font-medium text-white hover:text-gray-400 duration-300">Inicio</a>
  
              <a href="pricingVSm.jsp" class="font-medium text-white hover:text-gray-400 duration-300">Suscripciones</a>
  
              <a href="#" class="font-medium text-white hover:text-gray-400 duration-300">Nosotros</a>
  
            </div>
          </div>
        </nav>

        <div
            x-show="isOpen"
              x-transition:enter="duration-150 ease-out"
              x-transition:enter-start="opacity-0 scale-95"
              x-transition:enter-end="opacity-100 scale-100"
              x-transition:leave="duration-100 ease-in"
              x-transition:leave-start="opacity-100 scale-100"
              x-transition:leave-end="opacity-0 scale-95"
              class="absolute z-10 top-0 inset-x-0 p-2 transition transform origin-top-right md:hidden"
        >
          <div class="rounded-lg shadow-md bg-white ring-1 ring-black ring-opacity-5 overflow-hidden">
            <div class="px-5 pt-4 flex items-center justify-between">
              <div>
                  <img class="h-8 w-auto" src="img/ViSunn.svg" alt="">
              </div>
              <div class="-mr-2">
                <button type="button" @click="isOpen = !isOpen" class="bg-white rounded-md p-2 inline-flex items-center justify-center text-gray-400 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500">
                  <span class="sr-only">Close menu</span>
                  <!-- Heroicon name: outline/x -->
                  <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                  </svg>
                </button>
              </div>
            </div>
            <div class="py-1">
              <a href="heroVS.jsp" class="block w-full px-5 py-3 text-center font-medium text-black bg-gray-50 hover:bg-gray-100">Inicio</a>
              <a href="pricingVSm.jsp" class="block w-full px-5 py-3 text-center font-medium text-black bg-gray-50 hover:bg-gray-100">Suscripciones</a>
              <a href="#" class="block w-full px-5 py-3 text-center font-medium text-black bg-gray-50 hover:bg-gray-100">Nosotros</a>
            </div>
          </div>
        </div>
      </div>    
        <div class="p-5">
            <div class="space-y-6">
  <div class="bg-gray-100 shadow px-4 py-5 sm:rounded-lg sm:p-6">
    <div class="md:grid md:grid-cols-3 md:gap-6">
      <div class="md:col-span-1">
        <h3 class="text-lg font-medium leading-6 text-gray-900">Datos Personales</h3>
        <p class="mt-1 text-sm text-gray-500">Esta informaci&oacute;n será utilizada para fines de la plataforma, as&iacute; que se lo m&aacute;s sincero posible</p>
      </div>
      <div class="mt-5 md:mt-0 md:col-span-2">
          <form class="space-y-6" action="SQLsign.jsp" method="GET">
              <%
                    String nombre = request.getParameter( "nombre" );                   
                    String contra = request.getParameter( "contra" );
                    String correo = request.getParameter( "correo" );
              %>
              
              <input type="hidden" id="nomUsu" name="nomUsu" value='<%=nombre%>'>
              <input type="hidden" id="contra" name="contra" value='<%=contra%>'>
              <input type="hidden" id="correo" name="correo" value='<%=correo%>'>
                        <div class="grid grid-cols-3 gap-6">
            <div class="col-span-3 sm:col-span-2">
                <label for="apPat" class="block text-sm font-medium text-gray-700"> Apellido Paterno</label>
              <div class="mt-1 flex rounded-md shadow-sm">
                  <input type="text" name="apPat" id="apPat" required class=" rounded-lg focus:ring-indigo-500 valid:border-green-500 invalid:border-red-500 focus:border-indigo-500 flex-1 block w-full sm:text-sm border-gray-300" placeholder="Escriba su apellido paterno">
              </div>
            </div>
              <div class="col-span-3 sm:col-span-2">
              <label for="apMat" class="block text-sm font-medium text-gray-700"> Apellido Materno </label>
              <div class="mt-1 flex rounded-md shadow-sm">
                <input type="text" name="apMat" id="apMat" required class=" rounded-lg focus:ring-indigo-500 valid:border-green-500 invalid:border-red-500 focus:border-indigo-500 flex-1 block w-full sm:text-sm border-gray-300" placeholder="Escriba su apellido materno">
              </div>
            </div>
              <div class="col-span-3 sm:col-span-2">
              <label for="fecNac" class="block text-sm font-medium text-gray-700"> Fecha de Nacimiento </label>
              <div class="mt-1 flex rounded-md shadow-sm">
                <input type="date" name="fecNac" id="fecNac" required class=" rounded-lg focus:ring-indigo-500 valid:border-green-500 invalid:border-red-500 focus:border-indigo-500 flex-1 block w-full sm:text-sm border-gray-300" placeholder="Escriba su apellido paterno">
              </div>
            </div>              
              <div class="col-span-3 sm:col-span-2">
                  <label for="pais" class="block text-sm font-medium text-gray-700">País</label>
              <div class="mt-1 flex rounded-md shadow-sm">
                
                <select id="pais" name="pais" autocomplete="country-name" required class="mt-1 block w-200 bg-white valid:border-green-500 invalid:border-red-500 border border-gray-300 rounded-md shadow-sm py-2 px-3 focus:outline-none focus:ring-teal-500 focus:border-teal-500 sm:text-sm">
				
				<option>Afganistán</option>
				<option>Albania</option>
				<option>Alemania</option>
				<option>Andorra</option>
				<option>Angola</option>
				<option>Antigua y Barbuda</option>
				<option>Arabia Saudita</option>
				<option>Argelia</option>
				<option>Argentina</option>
				<option>Armenia</option>
				<option>Australia</option>
				<option>Austria</option>
				<option>Azerbaiyán</option>
				<option>Bahamas</option>
				<option>Bangladés</option>
				<option>Barbados</option>
				<option>Baréin</option>
				<option>Bélgica</option>
				<option>Belice</option>
				<option>Benín</option>
				<option>Bielorrusia</option>
				<option>Birmania</option>
				<option>Bolivia</option>
				<option>Bosnia y Herzegovina</option>
				<option>Botsuana</option>
				<option>Brasil</option>
				<option>Brunéi</option>
				<option>Bulgaria</option>
				<option>Burkina Faso</option>
				<option>Burundi</option>
				<option>Bután</option>
				<option>Cabo Verde</option>
				<option>Camboya</option>
				<option>Camerún</option>
				<option>Canadá</option>
				<option>Catar</option>
				<option>Chad</option>
				<option>Chile</option>
				<option>China</option>
				<option>Chipre</option>
				<option>Ciudad del Vaticano</option>
				<option>Colombia</option>
				<option>Comoras</option>
				<option>Corea del Norte</option>
				<option>Corea del Sur</option>
				<option>Costa de Marfil</option>
				<option>Costa Rica</option>
				<option>Croacia</option>
				<option>Cuba</option>
				<option>Dinamarca</option>
				<option>Dominica</option>
				<option>Ecuador</option>
				<option>Egipto</option>
				<option>El Salvador</option>
				<option>Emiratos Árabes Unidos</option>
				<option>Eritrea</option>
				<option>Eslovaquia</option>
				<option>Eslovenia</option>
				<option>España</option>
				<option>Estados Unidos</option>
				<option>Estonia</option>
				<option>Etiopía</option>
				<option>Filipinas</option>
				<option>Finlandia</option>
				<option>Fiyi</option>
				<option>Francia</option>
				<option>Gabón</option>
				<option>Gambia</option>
				<option>Georgia</option>
				<option>Ghana</option>
				<option>Granada</option>
				<option>Grecia</option>
				<option>Guatemala</option>
				<option>Guyana</option>
				<option>Guinea</option>
				<option>Guinea ecuatorial</option>
				<option>Guinea-Bisáu</option>
				<option>Haití</option>
				<option>Honduras</option>
				<option>Hungría</option>
				<option>India</option>
				<option>Indonesia</option>
				<option>Irak</option>
				<option>Irán</option>
				<option>Irlanda</option>
				<option>Islandia</option>
				<option>Islas Marshall</option>
				<option>Islas Salomón</option>
				<option>Israel</option>
				<option>Italia</option>
				<option>Jamaica</option>
				<option>Japón</option>
				<option>Jordania</option>
				<option>Kazajistán</option>
				<option>Kenia</option>
				<option>Kirguistán</option>
				<option>Kiribati</option>
				<option>Kuwait</option>
				<option>Laos</option>
				<option>Lesoto</option>
				<option>Letonia</option>
				<option>Líbano</option>
				<option>Liberia</option>
				<option>Libia</option>
				<option>Liechtenstein</option>
				<option>Lituania</option>
				<option>Luxemburgo</option>
				<option>Macedonia del Norte</option>
				<option>Madagascar</option>
				<option>Malasia</option>
				<option>Malaui</option>
				<option>Maldivas</option>
				<option>Malí</option>
				<option>Malta</option>
				<option>Marruecos</option>
				<option>Mauricio</option>
				<option>Mauritania</option>
				<option>México</option>
				<option>Micronesia</option>
				<option>Moldavia</option>
				<option>Mónaco</option>
				<option>Mongolia</option>
				<option>Montenegro</option>
				<option>Mozambique</option>
				<option>Namibia</option>
				<option>Nauru</option>
				<option>Nepal</option>
				<option>Nicaragua</option>
				<option>Níger</option>
				<option>Nigeria</option>
				<option>Noruega</option>
				<option>Nueva Zelanda</option>
				<option>Omán</option>
				<option>Países Bajos</option>
				<option>Pakistán</option>
				<option>Palaos</option>
				<option>Panamá</option>
				<option>Papúa Nueva Guinea</option>
				<option>Paraguay</option>
				<option>Perú</option>
				<option>Polonia</option>
				<option>Portugal</option>
				<option>Reino Unido</option>
				<option>República Centroafricana</option>
				<option>República Checa</option>
				<option>República del Congo</option>
				<option>República Democrática del Congo</option>
				<option>República Dominicana</option>
				<option>Ruanda</option>
				<option>Rumanía</option>
				<option>Rusia</option>
				<option>Samoa</option>
				<option>San Cristóbal y Nieves</option>
				<option>San Marino</option>
				<option>San Vicente y las Granadinas</option>
				<option>Santa Lucía</option>
				<option>Santo Tomé y Príncipe</option>
				<option>Senegal</option>
				<option>Serbia</option>
				<option>Seychelles</option>
				<option>Sierra Leona</option>
				<option>Singapur</option>
				<option>Siria</option>
				<option>Somalia</option>
				<option>Sri Lanka</option>
				<option>Suazilandia</option>
				<option>Sudáfrica</option>
				<option>Sudán</option>
				<option>Sudán del Sur</option>
				<option>Suecia</option>
				<option>Suiza</option>
				<option>Surinam</option>
				<option>Tailandia</option>
				<option>Tanzania</option>
				<option>Tayikistán</option>
				<option>Timor Oriental</option>
				<option>Togo</option>
				<option>Tonga</option>
				<option>Trinidad y Tobago</option>
				<option>Túnez</option>
				<option>Turkmenistán</option>
				<option>Turquía</option>
				<option>Tuvalu</option>
				<option>Ucrania</option>
				<option>Uganda</option>
				<option>Uruguay</option>
				<option>Uzbekistán</option>
				<option>Vanuatu</option>
				<option>Venezuela</option>
				<option>Vietnam</option>
				<option>Yemen</option>
				<option>Yibuti</option>
				<option>Zambia</option>
				<option>Zimbabue</option>
              </select>
            </div>                  
              </div>
                <div class="col-span-3 sm:col-span-2">
                    <label for="peso" class="block text-sm font-medium text-gray-700"> Peso </label>
                    <div class="mt-1 flex rounded-md shadow-sm">
                    <input type="number" name="peso" id="peso" min='10' minlength="2" maxlength="4" required class="rounded-lg focus:ring-indigo-500 focus:border-indigo-500 w-52 block sm:text-sm valid:border-green-500 invalid:border-red-500 border-gray-300" placeholder="Introduzca su peso en KG">
              </div>
            </div>              
              <div class="col-span-3 sm:col-span-2">
              <label for="altura" class="block text-sm font-medium text-gray-700"> Altura </label>
                    <div class="mt-1 flex rounded-md shadow-sm">
                        <input type="number" name="altura" required id="altura" minlength="2" maxlength="4" min='10' max='230' required class="rounded-lg focus:ring-indigo-500 focus:border-indigo-500 valid:border-green-500 invalid:border-red-500 w-72 block sm:text-sm border-gray-300" placeholder="Introduzca su altura en cent&iacute;metros">
              </div>
            </div>
            <div class="col-span-3 sm:col-span-2">
            <label for="conpassword" class="block text-sm font-medium text-gray-700"> Confirme la contraseña </label>
              <div class="mt-1 flex rounded-md shadow-sm">
                <label for="conpassword" class="sr-only">Contrase&ntilde;a</label>
                        <input id="conpassword" name="conpassword" minlength="6" maxlength="30" type="password" placeholder="Reintroduzca la contrase&ntilde;a" autocomplete="current-password" required class="block w-full shadow-sm focus:ring-indigo-500 valid:border-green-500 invalid:border-red-500 focus:border-indigo-500 sm:text-sm border-gray-300 rounded-md">
                </div>
            </div >
            <div class="col-span-3 sm:col-span-2">
                <label class="block text-sm font-medium text-gray-700"> Foto de Perfil </label>
            <div class="mt-1 flex items-center space-x-5">
              <span class="inline-block h-12 w-12 rounded-full overflow-hidden bg-gray-100">
                <svg class="h-full w-full text-gray-300" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M24 20.993V24H0v-2.996A14.977 14.977 0 0112.004 15c4.904 0 9.26 2.354 11.996 5.993zM16.002 8.999a4 4 0 11-8 0 4 4 0 018 0z" />
                </svg>
              </span>
                <button type="button" class="bg-white py-2 px-3 border border-gray-300 rounded-md shadow-sm text-sm leading-4 font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                    <label for="fotoPP" class="relative cursor-pointer bg-white rounded-md font-medium text-teal-600 hover:text-indigo-400 duration-300 focus-within:outline-none focus-within:ring-2 focus-within:ring-offset-2 focus-within:ring-indigo-500">
                    <span>Sube tu foto</span>
                    <input id="fotoPP" name="fotoPP" type="file" class="sr-only">
                  </label>
                </button>
            </div>
          </div>
            </div>
            </div>
            </div>
        <div class="flex justify-end">
      <button type="button" class="bg-white py-2 px-4 border border-gray-300 rounded-md shadow-sm text-sm font-medium text-gray-700 hover:bg-gray-300 duration-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"><a href="heroVS.jsp">Cancelar</a></button>
      <button type="submit" class="ml-3 inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-teal-600 hover:bg-teal-800 duration-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-teal-400">¡Reg&iacute;strate!</button>
  </div>
</div>  

        </form>
      </div>
    </div>
  </div>
        </div>
        </div>
    </body>
</html>
