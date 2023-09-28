<!-- meta tags and other links -->
<!DOCTYPE html>
<html lang="en">

  <head>
    {literal}
    <!-- Google tag (gtag.js) -->
    <script
        async
        src="https://www.googletagmanager.com/gtag/js?id=G-9ZF696Y8V9"
    ></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-9ZF696Y8V9');
    </script>

{/literal}
    <meta charset="UTF-8">
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0"
    >
    <meta
      name="description"
      content="Welcome to Gemcrest - Your Trusted Partner in Crypto and Precious Metals Investments. Explore our services for secure and tailored financial solutions."
    >
    <meta
      name="keywords"
      content="Gemcrest, cryptocurrency, precious metals, investments, financial solutions"
    >
    <meta
      name="author"
      content="Gemcrest Investment"
    >
    <title>Gemcrest Investment - Crypto and Precious Metals</title>
    <!-- Favicon -->
    <link
      rel="icon"
      type="image/png"
      href="assets/images/favicon.png"
      sizes="16x16"
    >
    <!-- bootstrap 4  -->
    <link
      rel="stylesheet"
      href="assets/css/vendor/bootstrap.min.css"
    >
    <!-- fontawesome 5  -->
    <link
      rel="stylesheet"
      href="assets/css/all.min.css"
    >
    <!-- line-awesome webfont -->
    <link
      rel="stylesheet"
      href="assets/css/line-awesome.min.css"
    >
    <link
      rel="stylesheet"
      href="assets/css/vendor/animate.min.css"
    >
    <!-- slick slider css -->
    <link
      rel="stylesheet"
      href="assets/css/vendor/slick.css"
    >
    <link
      rel="stylesheet"
      href="assets/css/vendor/dots.css"
    >
    <!-- dashdoard main css -->
    <link
      rel="stylesheet"
      href="assets/css/main.css"
    >
    {literal}
      <!-- Smartsupp Live Chat script -->
      <script type="text/javascript">
        var _smartsupp = _smartsupp || {};
        _smartsupp.key = '947a9c45f172b928e020c4f5cfed8e64435ead03';
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

  <body>
    <div class="preloader">
      <div class="preloader-container">
        <span class="animated-preloader"></span>
      </div>
    </div>

    <!-- scroll-to-top start -->
    <div class="scroll-to-top">
      <span class="scroll-icon">
        <i
          class="fa fa-rocket"
          aria-hidden="true"
        ></i>
      </span>
    </div>
    <!-- scroll-to-top end -->

    <div class="full-wh">
      <!-- STAR ANIMATION -->
      <div class="bg-animation">
        <div id='stars'></div>
        <div id='stars2'></div>
        <div id='stars3'></div>
        <div id='stars4'></div>
      </div><!-- / STAR ANIMATION -->
    </div>
    <div class="page-wrapper">
      <!-- header-section start  -->
      <header class="header">
        <div class="header__bottom">
          <div class="container">
            <nav class="navbar navbar-expand-xl p-0 align-items-center">
              <a
                class="site-logo site-title"
                href="/?a=home"
                style="margin-top: 12px"
              >
                <img
                  src="assets/images/main.svg"
                  width="375px"
                  height="95px"
                  alt="site-logo"
                >
              </a>
              {* <ul class="account-menu mobile-acc-menu">
                <li class="icon">
                  <a href="login.html"><i class="las la-user"></i></a>
                </li>
              </ul> 
              <ul class="account-menu mobile-acc-menu">
                <li class="icon">
                  <a href="login.html"><i class="las la-user"></i></a>
                </li>
              </ul>  *}
              <button
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="menu-toggle"></span>
              </button>
              <div
                class="collapse navbar-collapse"
                id="navbarSupportedContent"
              >
                <ul class="navbar-nav main-menu m-auto">
                  <li> {include file="nav-item.tpl" link="/?a=home" title="Home"}</li>
                  <li> {include file="nav-item.tpl" link="/?a=about" title="About Us"}</li>
                  <li> {include file="nav-item.tpl" link="/?a=plans" title="Investment Plans"}</li>
                  <li> {include file="nav-item.tpl" link="/?a=statistics" title="Statistics"}</li>


                  <li class="menu_has_children"><a href="#">Information</a>
                    <ul class="sub-menu">
                      <li> {include file="nav-item.tpl" link="/?a=privacy" title="Privacy Terms"}</li>
                      <li> {include file="nav-item.tpl" link="/?a=support" title="Contact Us"}</li>
                      <li> {include file="nav-item.tpl" link="/?a=rules" title="Terms & Condition"}</li>
                    </ul>
                  </li>

                </ul>
                {if $userinfo.logged != 1}
                  <a
                  href="/?a=login"
                  class="cmn-btn btn-md"
                  style="margin-right: 5px;"
                >Login</a>
                <a
                  href="/?a=signup"
                  class="cmn-btn btn-md"
                >Register</a>
                {else}
                  <a
                  href="/?a=account"
                  class="cmn-btn btn-md"
                >Dashboard</a>
                {/if}
              
                {* <div class="nav-right">
                  <ul class="account-menu ml-3">
                    <li class="icon"><a href="/?a=login"><i class="las la-user"></i></a></li>
                  </ul>

                  <ul class="account-menu ml-3">
                    <li class="icon"><a href="/?a=signup"><i class="las la-user"></i></a></li>
                  </ul>

                </div> *}
              </div>
            </nav>
          </div>
        </div><!-- header__bottom end -->
      </header>
      <!-- header-section end  -->
