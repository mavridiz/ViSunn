<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset='utf-8'>
        <title>Suscripciones</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel='stylesheet' href='app.css'>
        <link rel='stylesheet' href='components-v2.css'>  
    </head>
    <body>
        <div class="bg-gray-50">
  <header>
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
    <div x-data="{ isOpen: false }" class="relative pt-6 pb-16 sm:pb-24 bg-teal-500">
      <div>
        <nav class="relative max-w-7xl mx-auto flex items-center justify-between px-4 sm:px-6" aria-label="Global">
          <div class="flex items-center flex-1">
            <div class="flex items-center justify-between w-full md:w-auto">
              <a href="#">
                <span class="sr-only">ViSunn</span>
                <img class="h-8 w-auto sm:h-10" src="img/ViSunn.svg" alt="ViSunn">
              </a>
              <div class="-mr-2 flex items-center md:hidden">
                <button type="button" @click="isOpen = !isOpen" class="bg-transparent rounded-md p-2 inline-flex items-center justify-center text-gray-800 hover:bg-gray-700 focus:outline-none focus:ring-2 focus-ring-inset focus:ring-white" aria-expanded="false">
                  <span class="sr-only">Open main menu</span>
                  <!-- Heroicon name: outline/menu -->
                  <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                  </svg>
                </button>
              </div>
            </div>
            <div class="flex flex-wrap hidden space-x-10 md:flex md:ml-10">
                <a href="heroVS.jsp" class="font-medium text-white hover:text-gray-300 duration-300">Inicio</a>
  
              <a href="pricingVSm.jsp" class="font-medium text-white hover:text-gray-300 duration-300">Suscripciones</a>
  
              <a href="#" class="font-medium text-white hover:text-gray-300 duration-300">Nosotros</a>
  
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
              <div >
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
            <a href="loginVS.jsp" class="block w-full px-5 py-3 text-center font-medium text-green-600 bg-gray-50 hover:bg-gray-100"> Inicia sesi&oacute;n </a>
          </div>
        </div>
      </div>
  </header>

  <main>
    <!-- Pricing section -->
                <!-- Pricing section -->
              <div class="relative bg-teal-500">
                <!-- Overlapping background -->
                <div aria-hidden="true" class="hidden absolute bg-teal-900 w-full h-6 bottom-0 lg:block"></div>

                <div class="relative max-w-2xl mx-auto pt-16 px-4 text-center sm:pt-32 sm:px-6 lg:max-w-7xl lg:px-8">
                  <h1 class="text-4xl font-extrabold tracking-tight text-white sm:text-6xl">
                    <span class="block lg:inline">Precios bajos,</span>
                    <span class="block lg:inline">para gozar de los beneficios.</span>
                  </h1>
                  <p class="mt-4 text-xl text-indigo-100">Invertir en ti mismo es el mejor camino a la plenitud personal, y por eso te ofrecemos distintos planes que se adaptan a tus necesidades</p>
                </div>

                <h2 class="sr-only">Plans</h2>

                <!-- Toggle -->
                <div class="relative mt-12 flex justify-center sm:mt-16">
                  <div class="bg-v1-teal-800 p-0.5 rounded-lg flex">
                      <button type="button" class="relative bg-white py-2 px-6 border-white rounded-md shadow-sm text-sm font-medium text-teal-700 whitespace-nowrap hover:bg-indigo-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-900 focus:ring-teal-700 focus:z-10"><a href="moduloVSuscripcionM.jsp">Facturaci&oacute;n mensual</a></button>
                      <button type="button" class="ml-0.5 relative py-2 px-6 border border-transparent rounded-md text-sm font-medium text-indigo-200 whitespace-nowrap hover:bg-teal-600 duration-300 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-900 focus:ring-teal-700 focus:z-10"><a href="moduloVSuscripcionA.jsp">Facturaci&oacute;n anual</a></button>
                  </div>
                </div>

                <!-- Cards -->
                <div class="relative mt-8 max-w-2xl mx-auto px-4 pb-8 sm:mt-12 sm:px-6 lg:max-w-7xl lg:px-8 lg:pb-0">
                  <!-- Decorative background -->
                  <div aria-hidden="true" class="hidden absolute top-4 bottom-6 left-8 right-8 inset-0 bg-v1-teal-700 rounded-lg lg:block"></div>

                  <div class="relative space-y-6 lg:space-y-0 lg:grid lg:grid-cols-3">
                    <div class="bg-v1-teal-700 lg:bg-transparent pt-6 px-6 pb-3 rounded-lg lg:px-8 lg:pt-12">
                      <div>
                        <h3 class="text-white text-sm font-semibold uppercase tracking-wide">ViBasic</h3>
                        <div class="flex flex-col items-start sm:flex-row sm:items-center sm:justify-between lg:flex-col lg:items-start">
                          <div class="mt-3 flex items-center">
                            <p class="text-white text-4xl font-extrabold tracking-tight">$0</p>
                            <div class="ml-4">
                              <p class="text-white text-sm">MXN / mes</p>
                              <p class="text-indigo-200 text-sm">Factura Anual ($0)</p>
                            </div>
                          </div>
                            <a href="#" class="bg-white text-teal-700 hover:bg-gray-400 duration-300 mt-6 w-full inline-block py-2 px-8 border border-transparent rounded-md shadow-sm text-center text-sm font-medium sm:mt-0 sm:w-auto lg:mt-6 lg:w-full">Suscr&iacute;bete a ViBasic</a>
                        </div>
                      </div>
                      <h4 class="sr-only">Features</h4>
                      <ul role="list" class="border-white divide-white divide-opacity-75 mt-7 border-t divide-y lg:border-t-0">
                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-indigo-200 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-white ml-4 text-sm font-medium">Gratuito sin ningun cargo extra</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-indigo-200 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-white ml-4 text-sm font-medium">Utiliza funciones limitadas pero útiles de ViSunn</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-indigo-200 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-white ml-4 text-sm font-medium">Contiene anuncios</span>
                        </li>
                      </ul>
                    </div>

                    <div class="bg-white ring-2 ring-teal-700 shadow-md pt-6 px-6 pb-3 rounded-lg lg:px-8 lg:pt-12">
                      <div>
                        <h3 class="text-teal-600 text-sm font-semibold uppercase tracking-wide">ViPro</h3>
                        <div class="flex flex-col items-start sm:flex-row sm:items-center sm:justify-between lg:flex-col lg:items-start">
                          <div class="mt-3 flex items-center">
                            <p class="text-teal-600 text-4xl font-extrabold tracking-tight">$49</p>
                            <div class="ml-4">
                              <p class="text-gray-700 text-sm">MXN / mes</p>
                              <p class="text-gray-500 text-sm">Factura anual ($600)</p>
                            </div>
                          </div>
                            <a href="#" class="bg-teal-600 text-white hover:bg-teal-800 duration-300 mt-6 w-full inline-block py-2 px-8 border border-transparent rounded-md shadow-sm text-center text-sm font-medium sm:mt-0 sm:w-auto lg:mt-6 lg:w-full">Suscr&iacute;bete a ViPro</a>
                        </div>
                      </div>
                      <h4 class="sr-only">Features</h4>
                      <ul role="list" class="border-gray-200 divide-gray-200 mt-7 border-t divide-y lg:border-t-0">
                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-teal-500 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-gray-600 ml-4 text-sm font-medium">¡Cancela cuando t&uacute; quieras!</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-teal-500 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-gray-600 ml-4 text-sm font-medium">Utiliza todas las funciones de ViSunn</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-teal-500 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-gray-600 ml-4 text-sm font-medium">Sin anuncios</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-teal-500 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-gray-600 ml-4 text-sm font-medium">Sugerencias +</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-teal-500 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-gray-600 ml-4 text-sm font-medium">Personaliza tus recetas</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-teal-500 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-gray-600 ml-4 text-sm font-medium">Crea hasta 5 rutinas</span>
                        </li>
                      </ul>
                    </div>

                    <div class="bg-teal-700 lg:bg-transparent pt-6 px-6 pb-3 rounded-lg lg:px-8 lg:pt-12">
                      <div>
                        <h3 class="text-yellow-500 text-sm font-semibold uppercase tracking-wide">ViPro+</h3>
                        <div class="flex flex-col items-start sm:flex-row sm:items-center sm:justify-between lg:flex-col lg:items-start">
                          <div class="mt-3 flex items-center">
                            <p class="text-yellow-500 text-4xl font-extrabold tracking-tight">$99</p>
                            <div class="ml-4">
                              <p class="text-yellow-500 text-sm">MXN / mes</p>
                              <p class="text-yellow-500 text-sm">Factura anual ($1,188)</p>
                            </div>
                          </div>
                            <a href="#" class="bg-white text-yellow-600 hover:bg-gray-400 duration-300 mt-6 w-full inline-block py-2 px-8 border border-transparent rounded-md shadow-sm text-center text-sm font-medium sm:mt-0 sm:w-auto lg:mt-6 lg:w-full">Suscr&iacute;bete a ViSunn+</a>
                        </div>
                      </div>
                      <h4 class="sr-only">Features</h4>
                      <ul role="list" class="border-white divide-white divide-opacity-75 mt-7 border-t divide-y lg:border-t-0">
                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-indigo-200 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-yellow-500 ml-4 text-sm font-medium">Crea hasta 10 rutinas</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-indigo-200 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-yellow-500 ml-4 text-sm font-medium">Accedes a los ejercicios +</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-indigo-200 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-yellow-500 ml-4 text-sm font-medium">Recibe las noticias de Vigendy antes que todos</span>
                        </li>

                        <li class="py-3 flex items-center">
                          <!-- Heroicon name: solid/check -->
                          <svg class="text-indigo-200 w-5 h-5 flex-shrink-0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                          </svg>
                          <span class="text-yellow-500 ml-4 text-sm font-medium">Goza de todas las membres&iacute;as de las plataformas</span>
                        </li>
                      </ul>
                    </div>                      
                    </div>                     
                </div>
            </div>
        </div>

    <!-- Logo cloud -->


    <!-- FAQs -->
    <section aria-labelledby="faq-heading" class="bg-teal-900">
      <div class="max-w-2xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:max-w-7xl lg:px-8">
        <div class="max-w-2xl lg:mx-auto lg:text-center">
            <h2 id="faq-heading" class="text-3xl font-extrabold tracking-tight text-white sm:text-4xl">Preguntas Frecuentes</h2>
            <p class="mt-4 text-gray-400">Con el fin de brindar una mayor seguridad a la hora de suscribirse a alguno de nuestros planes, en Vigendy hemos decidido crear esta secci&oacute;n de respuestas a las preguntas m&aacute;s frecuentes, la cual se actualizar&aacute; peri&oacute;dicamente</p>
        </div>
        <div class="mt-20">
          <dl class="space-y-10 lg:space-y-0 lg:grid lg:grid-cols-2 lg:gap-x-8 lg:gap-y-10">
            <div>
              <dt class="font-semibold text-white">¿Por qué existe el plan ViPro+ si la única plataforma activa es Visunn?</dt>
              <dd class="mt-3 text-gray-400">ViSunn es solo el inicio de un gran proyecto, muy pronto saldrán a la luz nuevas plataformas de apoyo a la integridad, a la cultura y a la educación de los usuarios, como lo es el más próximo, ViGreeze, el plan ViPro+ brindará acceso premium a todas ellas.</dd>
            </div>

            <!-- More questions... -->
          </dl>
        </div>
      </div>
    </section>
    <!-- Footer -->
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
  </main>
</div>

    </body>
</html>
