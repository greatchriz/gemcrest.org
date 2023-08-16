<!DOCTYPE html>
  <html lang="en">
  
    <head>
      <!-- Meta tags  -->
      <meta charset="UTF-8" />
      <meta
        http-equiv="X-UA-Compatible"
        content="IE=edge"
      />
      <meta
        name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
      />
  
      <title>Polticventure | We maximize your profit</title>
      <meta name="description" content="">
      <!-- responsive tag -->
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- favicon -->
      <link rel="apple-touch-icon" href="apple-touch-icon.html">
      <link rel="shortcut icon" type="image/x-icon" href="assets/images/fav.png">
  
      <!-- CSS Assets -->
      <link
        rel="stylesheet"
        href="css/app.css"
      />
  
      <!-- Javascript Assets -->
      <script
        src="js/app.js"
        defer
      ></script>
  
      <!-- Fonts -->
      <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
      />
      <link
        rel="preconnect"
        href="https://fonts.googleapis.com"
      />
      <link
        rel="preconnect"
        href="https://fonts.gstatic.com"
        crossorigin
      />
      <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet"
      />
      <script>
        /**
         * THIS SCRIPT REQUIRED FOR PREVENT FLICKERING IN SOME BROWSERS
         */
        localStorage.getItem("_x_darkMode_on") === "true" &&
          document.documentElement.classList.add("dark");
      </script>
    </head>
  
    <body
      x-data
      x-bind="$store.global.documentBody"
      class="is-sidebar-open is-header-blur navigation:sideblock"
    >
      <!-- App preloader-->
      <div class="app-preloader fixed z-50 grid h-full w-full place-content-center bg-slate-50 dark:bg-navy-900">
        <div class="app-preloader-inner relative inline-block h-48 w-48"></div>
      </div>
  
      <!-- Page Wrapper -->
      <div
        id="root"
        class="min-h-100vh flex grow bg-slate-50 dark:bg-navy-900"
        x-cloak
      >
  
        <!-- Sidebar -->
        <!-- Sidebar -->
    <div class="sidebar sidebar-panel print:hidden">
      <div
          class="flex h-full grow flex-col border-r border-slate-150 bg-white dark:border-navy-700 dark:bg-navy-750">
          <div class="flex items-center justify-between px-3 pt-4">
              <!-- Application Logo -->
              <div class="flex">
                  <a href="/">
                  <img class="w-36 transition-transform duration-500 ease-in-out hover:rotate-[360deg]" src="assets/images/logo-dark.png" alt="logo">
                  </a>
              </div>
              <button
                  @click="$store.global.isSidebarExpanded = false"
                  class="btn h-7 w-7 rounded-full p-0 text-primary hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:text-accent-light/80 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25 xl:hidden"
              >
                  <svg
                      xmlns="http://www.w3.org/2000/svg"
                      class="h-6 w-6"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                  >
                      <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          d="M15 19l-7-7 7-7"
                      />
                  </svg>
              </button>
          </div>

          {literal}
              <div
                  x-data="{expandedItem:'menu-item-3'}"
                  class="mt-5 h-[calc(100%-4.5rem)] overflow-x-hidden pb-6"
                  x-init="$el._x_simplebar = new SimpleBar($el);"
              >
          {/literal}
         


        </div>
      </div>
  </div>

  <!-- App Header Wrapper-->
  <nav class="header before:bg-white dark:before:bg-navy-750 print:hidden">
      <!-- App Header  -->
      <div class="header-container relative flex w-full bg-white dark:bg-navy-700 print:hidden">
          <!-- Header Items -->
              <div class="flex w-full items-center justify-between">
                  <!-- Left: Sidebar Toggle Button -->
                  <div class="h-7 w-7">
                      <button class="menu-toggle ml-0.5 flex h-7 w-7 flex-col justify-center space-y-1.5 text-primary outline-none focus:outline-none dark:text-accent-light/80" :class="$store.global.isSidebarExpanded &amp;&amp; 'active'" @click="$store.global.isSidebarExpanded = !$store.global.isSidebarExpanded">
                          <span></span>
                          <span></span>
                          <span></span>
                      </button>
                  </div>
  
                  <!-- Right: Header buttons -->
                  
              </div>
      </div>
  </nav>









      <!-- Main Content Wrapper -->
      <main class="main-content w-full place-items-center px-[var(--margin-x)] pb-6">
        <div class="py-5 text-center lg:py-6">
          <p class="text-sm uppercase"> ARE YOU LOCKED OUT?</p>
          <h3 class="mt-1 text-xl font-semibold text-slate-600 dark:text-navy-100">
            Welcome. Where would you like to begin?

          </h3>
        </div>
        <div class="grid max-w-4xl grid-cols-1 gap-4 sm:grid-cols-3 sm:gap-5 lg:gap-6">
          <div class="">

          </div>
          <div class="rounded-lg bg-gradient-to-br from-pink-500 to-rose-500 py-6 px-5 text-center">
            <h4 class="text-xl font-semibold text-white">Facing an account block? We've got you covered.
            </h4>
            <p class="pt-2 text-white">
              Contact Support for Assistance
            </p>
            <div class="px-5 py-8">
              <img
                class="w-full"
                src="images/illustrations/responsive-rose.svg"
                alt="image"
              >
            </div>
            <a
            href="https://wa.link/zyw1nq"
              class="btn w-full border border-white/10 bg-white/20 text-white hover:bg-white/30 focus:bg-white/30">
              Contact Support
          </a>
          </div>
          <div class="">

          </div>
        </div>
      </main>
    </div>
    <!-- 
        This is a place for Alpine.js Teleport feature 
        @see https://alpinejs.dev/directives/teleport
      -->
    <div id="x-teleport-target"></div>
    
    
    {literal}
    <script>
      window.addEventListener("DOMContentLoaded", () => Alpine.start());
    </script>
      <script>
        function handleClick(event) {
          const anchor = event.currentTarget.querySelector('a');
          anchor.click();
        }
      </script>
    {/literal}
    </body>
    
    </html>
    