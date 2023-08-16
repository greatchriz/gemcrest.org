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
        <meta
            name="description"
            content=""
        >
        <!-- responsive tag -->
        <meta
            http-equiv="x-ua-compatible"
            content="ie=edge"
        >
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1"
        >
        <!-- favicon -->
        <link
            rel="apple-touch-icon"
            href="apple-touch-icon.html"
        >
        <link
            rel="shortcut icon"
            type="image/x-icon"
            href="assets/images/fav.png"
        >

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

        {literal}
            <!-- Smartsupp Live Chat script -->
            <script type="text/javascript">
                var _smartsupp = _smartsupp || {};
                _smartsupp.key = 'a97bcec3b0545c63429a968770cce494447efbf1';
                window.smartsupp || (function(d) {
                    var s, c, o = smartsupp = function() { o._.push(arguments) };
                    o._ = [];
                    s = d.getElementsByTagName('script')[0];
                    c = d.createElement('script');
                    c.type = 'text/javascript';
                    c.charset = 'utf-8';
                    c.async = true;
                    c.src = 'https://www.smartsuppchat.com/loader.js?';
                    s.parentNode.insertBefore(c, s);
                })(document);
            </script>
            <noscript> Powered by <a
                    href=“https://www.smartsupp.com”
                    target=“_blank”
                >Smartsupp</a></noscript>
        {/literal}
    </head>

    <body
        x-data
        class="is-header-blur"
        x-bind="$store.global.documentBody"
    >


        <!-- Page Wrapper -->
        <div
            id="root"
            class="min-h-100vh flex grow bg-slate-50 dark:bg-navy-900"
            x-cloak
        >
            <div class="fixed top-0 hidden p-6 lg:block lg:px-12">
                <a
                    href="#"
                    class="flex items-center space-x-2"
                >
                    <img
                        class=""
                        src="assets/images/logo-dark.png"
                        alt="logo"
                    />
                </a>
            </div>
            <div class="hidden w-full place-items-center lg:grid">
                <div class="w-full max-w-lg p-6">
                    <img
                        class="w-full"
                        x-show="!$store.global.isDarkModeEnabled"
                        src="images/illustrations/dashboard-check.svg"
                        alt="image"
                    />
                    <img
                        class="w-full"
                        x-show="$store.global.isDarkModeEnabled"
                        src="images/illustrations/dashboard-check-dark.svg"
                        alt="image"
                    />
                </div>
            </div>
