<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-full bg-gray-100">
    <head>
        <meta charset='utf-8'>
        <title>Suscripciones</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://cdn.tailwindcss.com"></script>
        <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
        <link rel='stylesheet' href='app.css'>
        <link rel='stylesheet' href='components-v2.css'>
    </head>
    <body class="h-full overflow-hidden">
<div class="h-full flex flex-col">
  <!-- Top nav-->
  <header class="flex-shrink-0 relative h-16 bg-white flex items-center">
    <!-- Logo area -->
    <div class="absolute inset-y-0 left-0 md:static md:flex-shrink-0">
      <a href="#" class="flex items-center justify-center h-16 w-16 bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-600 md:w-20">
          <img class="h-12 w-auto" src="img/ViSunn.svg" alt="Workflow">
      </a>
    </div>

    <!-- Picker area -->
    <div class="mx-auto md:hidden">
      <div class="relative">
        <label for="inbox-select" class="sr-only">Choose inbox</label>
        <select id="inbox-select" class="rounded-md border-0 bg-none pl-3 pr-8 text-base font-medium text-gray-900 focus:ring-2 focus:ring-indigo-600">
          <option selected>Horario</option>

          <option>Inicio</option>

          <option>Progreso</option>

          <option>Sugerencias</option>

          <option>Suscripcion</option>
          
          
        </select>
        <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center justify-center pr-2">
          <!-- Heroicon name: solid/chevron-down -->
          <svg class="h-5 w-5 text-gray-500" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
            <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        </div>
      </div>
    </div>

    <!-- Menu button area -->
    <div class="absolute inset-y-0 right-0 pr-4 flex items-center sm:pr-6 md:hidden">
      <!-- Mobile menu button -->
      <button type="button" @click="isOpen = !isOpen" class="-mr-2 inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-600">
        <span class="sr-only">Open main menu</span>
        <!-- Heroicon name: outline/menu -->
        <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
        </svg>
      </button>
    </div>

    <!-- Desktop nav area -->
    <div class="hidden md:min-w-0 md:flex-1 md:flex md:items-center md:justify-between">
      <div class="min-w-0 flex-1">
        <div class="max-w-2xl relative text-gray-400 focus-within:text-gray-500">

        </div>
      </div>
      <div class="ml-10 pr-4 flex-shrink-0 flex items-center space-x-10">
        <nav aria-label="Global" class="flex space-x-10">
            <a href="#" class="text-sm font-medium text-gray-900">Configuraci&oacute;n</a>
        </nav>
        <div class="flex items-center space-x-8">
          <span class="inline-flex">
            <a href="#" class="-mx-1 bg-white p-1 rounded-full text-gray-400 hover:text-gray-500 duration-300">
              <span class="sr-only">View notifications</span>
              <!-- Heroicon name: outline/bell -->
              <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
              </svg>
            </a>
          </span>

          <div x-data="{ isOpen: false }" class="relative inline-block text-left">
            <button type="button" @click="isOpen = !isOpen" class="bg-white rounded-full flex text-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-600" id="menu-0-button" aria-expanded="false" aria-haspopup="true">
              <span class="sr-only">Open user menu</span>
              <img class="h-8 w-8 rounded-full" src="https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
            </button>

            <div 
                x-show="isOpen"
                    x-transition:enter="transition ease-out duration-100"
                    x-transition:enter-start="transform opacity-0 scale-95"
                    x-transition:enter-end="transform opacity-100 scale-100"
                    x-transition:leave="transition ease-in duration-75"
                    x-transition:leave-start="transform opacity-100 scale-100"
                    x-transition:leave-end="transform opacity-0 scale-95"                       
                    class="origin-top-right absolute z-50 right-0 mt-2 w-56 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 focus:outline-none" role="menu" aria-orientation="vertical" aria-labelledby="menu-0-button" tabindex="-1">
              <div class="py-1" role="none">
                <!-- Active: "bg-gray-100", Not Active: "" -->
                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="menu-0-item-0"> Mi perfil </a>
                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="menu-0-item-1"> Cerrar sesi&oacute;n </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile menu, show/hide this `div` based on menu open/closed state -->

    <div  x-data="{ isOpen: false }" class="fixed inset-0 z-40 md:hidden" role="dialog" aria-modal="true">
      <!--
        Off-canvas menu overlay, show/hide based on off-canvas menu state.

        Entering: "transition-opacity ease-linear duration-300"
          From: "opacity-0"
          To: "opacity-100"
        Leaving: "transition-opacity ease-linear duration-300"
          From: "opacity-100"
          To: "opacity-0"
      -->
      <div 
        x-show="isOpen"
        x-transition:enter="transition-opacity ease-linear duration-300"
        x-transition:enter-start="opacity-0"
        x-transition:enter-end="opacity-100"
        x-transition:leave="transition-opacity ease-linear duration-300"
        x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0"
          class="hidden sm:block sm:fixed sm:inset-0 sm:bg-gray-600 sm:bg-opacity-75" aria-hidden="true"></div>

      <!--
        Mobile menu, toggle classes based on menu state.

        Entering: "transition ease-out duration-150 sm:ease-in-out sm:duration-300"
          From: "transform opacity-0 scale-110 sm:translate-x-full sm:scale-100 sm:opacity-100"
          To: "transform opacity-100 scale-100  sm:translate-x-0 sm:scale-100 sm:opacity-100"
        Leaving: "transition ease-in duration-150 sm:ease-in-out sm:duration-300"
          From: "transform opacity-100 scale-100 sm:translate-x-0 sm:scale-100 sm:opacity-100"
          To: "transform opacity-0 scale-110  sm:translate-x-full sm:scale-100 sm:opacity-100"
      -->
      <nav 
        x-show="isOpen"
        x-transition:enter="transition ease-out duration-150 sm:ease-in-out sm:duration-300"
        x-transition:enter-start="transform opacity-0 scale-110 sm:translate-x-full sm:scale-100 sm:opacity-100"
        x-transition:enter-end="transform opacity-100 scale-100  sm:translate-x-0 sm:scale-100 sm:opacity-100"
        x-transition:leave="transition ease-in duration-150 sm:ease-in-out sm:duration-300"
        x-transition:leave-start="transform opacity-100 scale-100 sm:translate-x-0 sm:scale-100 sm:opacity-100"
        x-transition:leave-end="transform opacity-0 scale-110  sm:translate-x-full sm:scale-100 sm:opacity-100"
          class="fixed z-40 inset-0 h-full w-full bg-white sm:inset-y-0 sm:left-auto sm:right-0 sm:max-w-sm sm:w-full sm:shadow-lg" aria-label="Global">
        <div class="h-16 flex items-center justify-between px-4 sm:px-6">
          <a href="#">
              <img class="block h-8 w-auto" src="img/ViSunn.svg" alt="ViSunn">
          </a>
          <button type="button" @click="isOpen = !isOpen" type="button" class="-mr-2 inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-600">
            <span class="sr-only">Close main menu</span>
            <!-- Heroicon name: outline/x -->
            <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
        <div class="mt-2 max-w-8xl mx-auto px-4 sm:px-6">
          <div class="relative text-gray-400 focus-within:text-gray-500">
            <div class="absolute inset-y-0 left-0 flex items-center justify-center pl-3">
            </div>
          </div>
        </div>
        <div class="max-w-8xl mx-auto py-3 px-2 sm:px-4">
          <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-100">Inboxes</a>

          <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-100">Reporting</a>

          <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-100">Settings</a>
        </div>
        <div class="border-t border-gray-200 pt-4 pb-3">
          <div class="max-w-8xl mx-auto px-4 flex items-center sm:px-6">
            <div class="flex-shrink-0">
              <img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
            </div>
            <div class="ml-3 min-w-0 flex-1">
              <div class="text-base font-medium text-gray-800 truncate">Whitney Francis</div>
              <div class="text-sm font-medium text-gray-500 truncate">whitney.francis@example.com</div>
            </div>
            <a href="#" class="ml-auto flex-shrink-0 bg-white p-2 text-gray-400 hover:text-gray-500">
              <span class="sr-only">View notifications</span>
              <!-- Heroicon name: outline/bell -->
              <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
              </svg>
            </a>
          </div>
          <div class="mt-3 max-w-8xl mx-auto px-2 space-y-1 sm:px-4">
            <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-50">Mi perfil</a>

            <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-50">Cerrar sesi&oacute;n</a>
          </div>
        </div>
      </nav>
    </div>
  </header>
  <!-- Bottom section -->
  <div class="min-h-0 flex-1 flex overflow-hidden">
    <!-- Narrow sidebar-->
    <nav aria-label="Sidebar" class="hidden md:block md:flex-shrink-0 md:bg-gray-800 md:overflow-y-auto">
      <div class="relative w-20 flex flex-col p-3 space-y-3">
          <a href="moduloVSinicio.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Inicio</span>
          <!-- Heroicon name: outline/inbox -->
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M14.752 11.168l-3.197-2.132A1 1 0 0010 9.87v4.263a1 1 0 001.555.832l3.197-2.132a1 1 0 000-1.664z" />
            <path stroke-linecap="round" stroke-linejoin="round" d="M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
        </svg>
        </a>

          <a href="moduloVSprogreso.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Progreso</span>
          <!-- Heroicon name: outline/archive -->
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
        </svg>
        </a>

          <a href="moduloVShorario.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Horario</span>
          <!-- Heroicon name: outline/user-circle -->
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
        </svg>
        </a>

          <a href="moduloVSsugerencia.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Sugerencias</span>
          <!-- Heroicon name: outline/flag -->
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z" />
          </svg>
        </a>

          <a href="moduloVSdieta.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Dieta</span>
          <!-- Heroicon name: outline/ban -->
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3" />
            </svg>
        </a>

          <a href="moduloVSuscripcionM.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Suscripcion</span>
          <!-- Heroicon name: outline/pencil-alt -->
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z" />
        </svg>
        </a>
      </div>
    </nav>

    <!-- Main area -->
    <main class="min-w-0 flex-1 border-t border-gray-200 lg:flex">
      <!-- Primary column -->
      <section aria-labelledby="primary-heading" class="min-w-0 flex-1 h-full flex flex-col overflow-y-auto lg:order-last">
        <h1 id="primary-heading" class="sr-only">Home</h1>
        <!-- Your content -->
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

    <!-- Footer -->
  </main>


      </section>

     
    </main>
  </div>
</div>

    </body>
</html>
