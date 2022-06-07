<!DOCTYPE html>
<html lang="es" class="h-full bg-white">

<head>
    <meta charset='utf-8'>
    <title>ViSunn</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src="https://cdn.tailwindcss.com"></script>
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel='stylesheet' href='app.css'>
    <link rel='stylesheet' href='components-v2.css'>  
</head>

<%
    
%>

<body class="h-full">
<div class="relative bg-gray-800 overflow-hidden">
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
          <div class="hidden md:flex">
              <a href="loginVS.jsp" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-white bg-green-500 hover:bg-green-700 duration-300"> Inicia sesi&oacute;n </a>
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
            <a href="#" class="block w-full px-5 py-3 text-center font-medium text-green-600 bg-gray-50 hover:bg-gray-100"> Inicia sesi&oacute;n </a>
          </div>
        </div>
      </div>
  
      <main class="mt-16 sm:mt-24">
        <div class="mx-auto max-w-7xl">
          <div class="lg:grid lg:grid-cols-12 lg:gap-8">
            <div class="px-4 sm:px-6 sm:text-center md:max-w-2xl md:mx-auto lg:col-span-6 lg:text-left lg:flex lg:items-center">
              <div>
                <a href="#" class="inline-flex items-center text-white bg-gray-900 rounded-full p-1 pr-2 sm:text-base lg:text-sm xl:text-base hover:text-gray-200 duration-300">
                  <span class="px-3 py-0.5 text-white text-xs font-semibold leading-5 uppercase tracking-wide bg-green-500 rounded-full">¡Nuevo!</span>
                  <span class="ml-4 text-sm">¡Pru&eacute;balo gratis!</span>
                  <!-- Heroicon name: solid/chevron-right -->
                  <svg class="ml-2 w-5 h-5 text-gray-500" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                    <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd" />
                  </svg>
                </a>
                <h1 class="mt-4 text-4xl tracking-tight font-extrabold text-white sm:mt-5 sm:leading-none lg:mt-6 lg:text-5xl xl:text-6xl">
                  <span class="md:block">Mejora la calidad de</span>
                  <span class="text-blue-400 md:block">tu bienestar integral</span>
                </h1>
                <p class="mt-3 text-base text-gray-300 sm:mt-5 sm:text-xl lg:text-lg xl:text-xl">Con ViSunn si&eacute;ntete bien realizando actividad f&iacute;sica y alimant&aacute;ndote sanamente, tu cuerpo y t&uacute; necesitan una recompensa</p>
                
              </div>
            </div>
            <div class="mt-16 sm:mt-24 lg:mt-0 lg:col-span-6">
              <div class="bg-white sm:max-w-md sm:w-full sm:mx-auto sm:rounded-lg sm:overflow-hidden">
                <div class="px-4 py-8 sm:px-10">
                  <div>
                    <p class="text-sm font-medium text-gray-700">Crea tu Cuenta Vigendy con</p>
  
                    <div class="mt-1 grid grid-cols-3 gap-3">
                      <div>
                        <a href="#" class="w-full inline-flex justify-center py-2 px-4 border border-gray-300 rounded-md shadow-sm bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                          <span class="sr-only">Sign in with Facebook</span>
                          <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                            <path fill-rule="evenodd" d="M20 10c0-5.523-4.477-10-10-10S0 4.477 0 10c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V10h2.54V7.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V10h2.773l-.443 2.89h-2.33v6.988C16.343 19.128 20 14.991 20 10z" clip-rule="evenodd" />
                          </svg>
                        </a>
                      </div>
  
                      <div>
                        <a href="#" class="w-full inline-flex justify-center py-2 px-4 border border-gray-300 rounded-md shadow-sm bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                          <span class="sr-only">Sign in with Twitter</span>
                          <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                            <path d="M6.29 18.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0020 3.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.073 4.073 0 01.8 7.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 010 16.407a11.616 11.616 0 006.29 1.84" />
                          </svg>
                        </a>
                      </div>
  
                      <div>
                        <a href="#" class="w-full inline-flex justify-center py-2 px-4 border border-gray-300 rounded-md shadow-sm bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                          <span class="sr-only">Sign in with GitHub</span>
                          <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                            <path fill-rule="evenodd" d="M10 0C4.477 0 0 4.484 0 10.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0110 4.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.203 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.942.359.31.678.921.678 1.856 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0020 10.017C20 4.484 15.522 0 10 0z" clip-rule="evenodd" />
                          </svg>
                        </a>
                      </div>
                    </div>
                  </div>
  
                  <div class="mt-6 relative">
                    <div class="absolute inset-0 flex items-center" aria-hidden="true">
                      <div class="w-full border-t border-gray-300"></div>
                    </div>
                    <div class="relative flex justify-center text-sm">
                      <span class="px-2 bg-white text-gray-500"> O </span>
                    </div>
                  </div>
  
                  <div class="mt-6">
                      <form action="signupVS.jsp" method="GET" class="space-y-6">
                      <div>
                        <label for="nombre" class="sr-only">Nombre</label>
                        <input type="text" name="nombre" id="nombre" autocomplete="name" placeholder="Nombre" required class="block w-full shadow-sm focus:ring-indigo-500 focus:border-green-500 sm:text-sm border-gray-300 rounded-md">
                        
                      </div>
  
                      <div>
                        <label for="correo" class="sr-only">Correo electr&oacute;nico</label>
                        <input type="email" name="correo" id="correo" autocomplete="email" placeholder="Correo electr&oacute;nico" required class="peer block w-full shadow-sm focus:ring-green-500 valid:border-green-500 invalid:border-red-500 focus:border-indigo-500 sm:text-sm border-gray-300 rounded-md">
                        <p class="mt-2 invisible peer-invalid:visible text-pink-600 text-sm">
                            Escriba un correo electr&oacute;nico v&aacute;lido.</p>
                      </div>
  
                      <div>
                        <label for="contra" class="sr-only">Contrase&ntilde;a</label>
                        <input id="contra" name="contra" minlength="6" maxlength="30" type="password" placeholder="Contrase&ntilde;a" autocomplete="current-password" required class="peer block w-full shadow-sm focus:ring-indigo-500 valid:border-green-500 invalid:border-red-500 focus:border-indigo-500 sm:text-sm border-gray-300 rounded-md">
                        <p class="mt-2 invisible peer-invalid:visible text-pink-600 text-sm">
                            Escriba una contrase&ntilde;a v&aacute;lida.</p>
                      </div>
  
                      <div>
                        <button type="submit" class="w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-purple-500 hover:bg-purple-700 duration-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-purple-500">Crea tu cuenta</button>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="px-4 py-6 bg-gray-50 border-t-2 border-gray-200 sm:px-10">
                  <p class="text-xs leading-5 text-gray-500">Al registrarte, aceptas nuestros <a href="#" class="font-medium text-gray-900 hover:underline">T&eacute;rminos y Condiciones</a>, <a href="#" class="font-medium text-gray-900 hover:underline">Pol&iacute;ticas de datos</a> y <a href="#" class="font-medium text-gray-900 hover:underline">Pol&iacute;tica de cookies</a>.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>
    </div>
  </div>

<section class="m-5 p-5 md:h-full flex-wrap items-center text-white">
<div class="relative bg-white py-10 sm:py-24 lg:py-32">
  <div class="mx-auto max-w-md px-4 text-center sm:max-w-3xl sm:px-6 lg:max-w-7xl lg:px-8">
      <h2 class="text-base font-semibold uppercase tracking-wider text-green-600">¡Convi&eacute;rtete en la mejor versi&oacute;n de t&iacute;!</h2>
    <p class="mt-2 text-3xl font-extrabold tracking-tight text-gray-900 sm:text-4xl">Todo lo que necesitas para el cambio</p>
    <p class="mx-auto mt-5 max-w-prose text-xl text-gray-500">Est&aacute; aqu&iacute; en ViSunn</p>
    <div class="mt-12">
      <div class="grid grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-3">
        <div class="pt-6">
          <div class="flow-root rounded-lg bg-gray-50 px-6 pb-8">
            <div class="-mt-6">
              <div>
                <span class="inline-flex items-center justify-center rounded-md bg-teal-500 p-3 shadow-lg">
                  <!-- Heroicon name: outline/cloud-upload -->
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4" />
                   </svg>
                </span>
              </div>
              <h3 class="mt-8 text-lg font-medium tracking-tight text-gray-900">Crea tu rutina</h3>
              <p class="mt-5 text-base text-gray-500">La base de un bienestar integral &oacute;ptimo es una rutina bien estructurada.</p>
            </div>
          </div>
        </div>

        <div class="pt-6">
          <div class="flow-root rounded-lg bg-gray-50 px-6 pb-8">
            <div class="-mt-6">
              <div>
                <span class="inline-flex items-center justify-center rounded-md bg-green-500 p-3 shadow-lg">
                  <!-- Heroicon name: outline/lock-closed -->
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z" />
                </svg>
                </span>
              </div>
                <h3 class="mt-8 text-lg font-medium tracking-tight text-gray-900">Horas de sue&ntilde;o</h3>
              <p class="mt-5 text-base text-gray-500">Administra tu horario nocturno, duerme tus horas para rendir el día siguiente.</p>
            </div>
          </div>
        </div>

        <div class="pt-6">
          <div class="flow-root rounded-lg bg-gray-50 px-6 pb-8">
            <div class="-mt-6">
              <div>
                <span class="inline-flex items-center justify-center rounded-md bg-teal-500 p-3 shadow-lg">
                  <!-- Heroicon name: outline/refresh -->
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
                    </svg>
                </span>
              </div>
              <h3 class="mt-8 text-lg font-medium tracking-tight text-gray-900">Tus necesidades son primero</h3>
              <p class="mt-5 text-base text-gray-500">Se acab&oacute; el adaptarte a la plataforma, la plataforma se adapta a ti.</p>
            </div>
          </div>
        </div>

        <div class="pt-6">
          <div class="flow-root rounded-lg bg-gray-50 px-6 pb-8">
            <div class="-mt-6">
              <div>
                <span class="inline-flex items-center justify-center rounded-md bg-green-500 p-3 shadow-lg">
                  <!-- Heroicon name: outline/shield-check -->
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15" />
                </svg>
                </span>
              </div>
              <h3 class="mt-8 text-lg font-medium tracking-tight text-gray-900">Actualiza cuando quieras</h3>
              <p class="mt-5 text-base text-gray-500">Si tus necesidades cambian, ¡ViSunn lo hace contigo!</p>
            </div>
          </div>
        </div>

        <div class="pt-6">
          <div class="flow-root rounded-lg bg-gray-50 px-6 pb-8">
            <div class="-mt-6">
              <div>
                <span class="inline-flex items-center justify-center rounded-md bg-teal-500 p-3 shadow-lg">
                  <!-- Heroicon name: outline/cog -->
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path d="M12 14l9-5-9-5-9 5 9 5z" />
                    <path d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z" />
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 14l9-5-9-5-9 5 9 5zm0 0l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14zm-4 6v-7.5l4-2.222" />
                </svg>
                </span>
              </div>
                <h3 class="mt-8 text-lg font-medium tracking-tight text-gray-900">Tu vida acad&eacute;mica</h3>
                <p class="mt-5 text-base text-gray-500">La escuela no se queda atr&aacute;s, administra tus horas de clases y tareas</p>
            </div>
          </div>
        </div>

        <div class="pt-6">
          <div class="flow-root rounded-lg bg-gray-50 px-6 pb-8">
            <div class="-mt-6">
              <div>
                <span class="inline-flex items-center justify-center rounded-md bg-green-500 p-3 shadow-lg">
                  <!-- Heroicon name: outline/server -->
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z" />
                </svg>
                </span>
              </div>
              <h3 class="mt-8 text-lg font-medium tracking-tight text-gray-900">Descubre nuevas cosas</h3>
              <p class="mt-5 text-base text-gray-500">Con nuestras sugerencias, la creaci&oacute;n de la rutina y adherirte a ella ¡Será más fácil que nunca!</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</section>
<footer class="bg-gray-800" aria-labelledby="footer-heading">
  <h2 id="footer-heading" class="sr-only">Footer</h2>
  <div class="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:py-16 lg:px-8">
    <div class="pb-8 xl:grid xl:grid-cols-5 xl:gap-8">
      <div class="grid grid-cols-2 gap-8 xl:col-span-4">
        <div class="md:grid md:grid-cols-2 md:gap-8">
          <div>
              <h3 class="text-sm font-semibold text-gray-400 tracking-wider uppercase">Cont&aacute;ctanos</h3>
            <ul role="list" class="mt-4 space-y-4">
              <li>
                  <a href="#" class="text-base text-gray-400 hover:text-white duration-300"> Correo electr&oacute;nico </a>
              </li>

              <li>
                  <a href="#" class="text-base text-gray-400 hover:text-white duration-300"> Tel&eacute;fono </a>
              </li>
            </ul>
          </div>
          <div class="mt-12 md:mt-0">
            <h3 class="text-sm font-semibold text-gray-400 tracking-wider uppercase">Vigendy</h3>
            <ul role="list" class="mt-4 space-y-4">
              <li>
                <a href="#" class="text-base text-gray-400 hover:text-white duration-300"> Sobre nosotros </a>
              </li>

              <li>
                  <a href="#" class="text-base text-gray-400 hover:text-white duration-300"> Misi&oacute;n </a>
              </li>

              <li>
                  <a href="#" class="text-base text-gray-400 hover:text-white duration-300"> Visi&oacute;n </a>
              </li>

              <li>
                <a href="#" class="text-base text-gray-400 hover:text-white duration-300"> Valores </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="mt-8 border-t border-gray-700 pt-8 md:flex md:items-center md:justify-between">
      <div class="flex space-x-6 md:order-2">
        <a href="#" class="text-gray-400 hover:text-white duration-300">
          <span class="sr-only">Facebook</span>
          <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
            <path fill-rule="evenodd" d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z" clip-rule="evenodd" />
          </svg>
        </a>

        <a href="#" class="text-gray-400 hover:text-white duration-300">
          <span class="sr-only">Instagram</span>
          <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
            <path fill-rule="evenodd" d="M12.315 2c2.43 0 2.784.013 3.808.06 1.064.049 1.791.218 2.427.465a4.902 4.902 0 011.772 1.153 4.902 4.902 0 011.153 1.772c.247.636.416 1.363.465 2.427.048 1.067.06 1.407.06 4.123v.08c0 2.643-.012 2.987-.06 4.043-.049 1.064-.218 1.791-.465 2.427a4.902 4.902 0 01-1.153 1.772 4.902 4.902 0 01-1.772 1.153c-.636.247-1.363.416-2.427.465-1.067.048-1.407.06-4.123.06h-.08c-2.643 0-2.987-.012-4.043-.06-1.064-.049-1.791-.218-2.427-.465a4.902 4.902 0 01-1.772-1.153 4.902 4.902 0 01-1.153-1.772c-.247-.636-.416-1.363-.465-2.427-.047-1.024-.06-1.379-.06-3.808v-.63c0-2.43.013-2.784.06-3.808.049-1.064.218-1.791.465-2.427a4.902 4.902 0 011.153-1.772A4.902 4.902 0 015.45 2.525c.636-.247 1.363-.416 2.427-.465C8.901 2.013 9.256 2 11.685 2h.63zm-.081 1.802h-.468c-2.456 0-2.784.011-3.807.058-.975.045-1.504.207-1.857.344-.467.182-.8.398-1.15.748-.35.35-.566.683-.748 1.15-.137.353-.3.882-.344 1.857-.047 1.023-.058 1.351-.058 3.807v.468c0 2.456.011 2.784.058 3.807.045.975.207 1.504.344 1.857.182.466.399.8.748 1.15.35.35.683.566 1.15.748.353.137.882.3 1.857.344 1.054.048 1.37.058 4.041.058h.08c2.597 0 2.917-.01 3.96-.058.976-.045 1.505-.207 1.858-.344.466-.182.8-.398 1.15-.748.35-.35.566-.683.748-1.15.137-.353.3-.882.344-1.857.048-1.055.058-1.37.058-4.041v-.08c0-2.597-.01-2.917-.058-3.96-.045-.976-.207-1.505-.344-1.858a3.097 3.097 0 00-.748-1.15 3.098 3.098 0 00-1.15-.748c-.353-.137-.882-.3-1.857-.344-1.023-.047-1.351-.058-3.807-.058zM12 6.865a5.135 5.135 0 110 10.27 5.135 5.135 0 010-10.27zm0 1.802a3.333 3.333 0 100 6.666 3.333 3.333 0 000-6.666zm5.338-3.205a1.2 1.2 0 110 2.4 1.2 1.2 0 010-2.4z" clip-rule="evenodd" />
          </svg>
        </a>

        <a href="#" class="text-gray-400 hover:text-white duration-300">
          <span class="sr-only">Twitter</span>
          <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84" />
          </svg>
        </a>

        <a href="#" class="text-gray-400 hover:text-white duration-300">
          <span class="sr-only">GitHub</span>
          <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
            <path fill-rule="evenodd" d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z" clip-rule="evenodd" />
          </svg>
        </a>

        <a href="#" class="text-gray-400 hover:text-white duration-300">
          <span class="sr-only">Dribbble</span>
          <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
            <path fill-rule="evenodd" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10c5.51 0 10-4.48 10-10S17.51 2 12 2zm6.605 4.61a8.502 8.502 0 011.93 5.314c-.281-.054-3.101-.629-5.943-.271-.065-.141-.12-.293-.184-.445a25.416 25.416 0 00-.564-1.236c3.145-1.28 4.577-3.124 4.761-3.362zM12 3.475c2.17 0 4.154.813 5.662 2.148-.152.216-1.443 1.941-4.48 3.08-1.399-2.57-2.95-4.675-3.189-5A8.687 8.687 0 0112 3.475zm-3.633.803a53.896 53.896 0 013.167 4.935c-3.992 1.063-7.517 1.04-7.896 1.04a8.581 8.581 0 014.729-5.975zM3.453 12.01v-.26c.37.01 4.512.065 8.775-1.215.25.477.477.965.694 1.453-.109.033-.228.065-.336.098-4.404 1.42-6.747 5.303-6.942 5.629a8.522 8.522 0 01-2.19-5.705zM12 20.547a8.482 8.482 0 01-5.239-1.8c.152-.315 1.888-3.656 6.703-5.337.022-.01.033-.01.054-.022a35.318 35.318 0 011.823 6.475 8.4 8.4 0 01-3.341.684zm4.761-1.465c-.086-.52-.542-3.015-1.659-6.084 2.679-.423 5.022.271 5.314.369a8.468 8.468 0 01-3.655 5.715z" clip-rule="evenodd" />
          </svg>
        </a>
      </div>
      <p class="mt-8 text-base text-gray-400 md:mt-0 md:order-1">&copy; 2022 Vigendy, Inc. Todos los derechos reservados.</p>
    </div>
  </div>
</footer>

</body>
</html>