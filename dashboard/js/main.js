(function ($) {
  "use strict";

  $(window).on("load", function () {
    // Preloader
    $(".preloader").fadeOut(1000);
    // Background Image With Attribute
    var img = $(".bg-img");
    img.css("background-image", function () {
      var bg = "url(" + $(this).data("background") + ")";
      return bg;
    });
  });

  $(document).ready(function () {
    //codes for wow animation
    if ($(".wow").length) {
      var wow = new WOW({
        boxClass: "wow",
        animateClass: "animated",
        offset: 0,
        mobile: false,
        live: true,
      });
      wow.init();
    }

    // Animated Hamburger Icon
    $(".navbar-toggler").on("click", function () {
      $(this).toggleClass("toggle-active");
      $("#mainNav").addClass("nav-bg-active");
    });
    // Active Nav Link
    $(".nav-link").on("click", function () {
      $(".nav-link").removeClass("nav-link-active");
      $(this).addClass("nav-link-active");
    });
    // Dropdown Toggle Active Link
    $(".dropdown-toggle").on("click", function () {
      $(this).addClass("nav-link-active");
    });
    // Dropdown Item Active
    $(".dropdown-item").on("click", function () {
      $(".dropdown-item").removeClass("dropdown-item-active");
      $(this).addClass("dropdown-item-active");
    });
    // Position Navbar On Scroll
    $(window).on("scroll", function () {
      var scroll = $(window).scrollTop();
      if ((scroll > 30) | (scroll == 30)) {
        $("#mainNav").addClass("nav-bg-active");
        $(".header").addClass("header-fixed");
        $(".main-nav").addClass("fixed-top animated fadeInDown");
      } else {
        $("#mainNav").removeClass("nav-bg-active");
        $(".header").removeClass("header-fixed");
        $(".main-nav").removeClass("fixed-top animated fadeInDown");
      }
    });

    // Select Language
    $(".language-select").niceSelect();

    // Hero Section Video Popup
    $(".video-popup").magnificPopup({
      type: "iframe",
      // other options
      iframe: {
        markup:
          '<div class="mfp-iframe-scaler">' +
          '<div class="mfp-close"></div>' +
          '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>' +
          "</div>",
        patterns: {
          youtube: {
            index: "youtube.com/",
            id: "v=",
            src: "https://www.youtube.com/embed/%id%",
          },
        },
        srcAction: "iframe_src",
      },
    });

    //preloader counter
    $(".counter").counterUp({
      delay: 10,
      time: 2900,
    });

    // Investment Tab
    $(".invest-tab").hide();
    $(".invest-tab:first").show();

    $(".invest-tab-btn").on("click", function () {
      $(".invest-tab-btn").removeClass("invest-tab-btn-active");
      $(this).addClass("invest-tab-btn-active");
      $(".invest-tab").hide();

      var activeInvestTab = $(this).attr("href");
      $(activeInvestTab).fadeIn();
      return false;
    });

    $(".invest-gold-btn").on("click", function () {
      $(".plan-single-item").removeClass("plan-single-active");
      $(".plan-single-gold").addClass("plan-single-active");
    });

    $(".invest-silver-btn").on("click", function () {
      $(".plan-single-item").removeClass("plan-single-active");
      $(".plan-single-silver").addClass("plan-single-active");
    });

    $(".invest-bronze-btn").on("click", function () {
      $(".plan-single-item").removeClass("plan-single-active");
      $(".plan-single-bronze").addClass("plan-single-active");
    });

    // Default Invest Range Value
    var str = $("#amount").val();
    $("#bronzeDaily").text((str * 2) / 100 + " USD");
    $("#bronzeTotal").text(((str * 2) / 100) * 15 + " USD");

    var strTwo = $("#amount").val();
    $("#silverDaily").text((strTwo * 2.5) / 100 + " USD");
    $("#silverTotal").text(((strTwo * 2.5) / 100) * 30 + " USD");

    var strThree = $("#amount").val();
    $("#goldDaily").text((strThree * 3) / 100 + " USD");
    $("#goldTotal").text(((strThree * 3) / 100) * 45 + " USD");

    // Form Validation
    // $('form').submit(function(e) {
    //   e.preventDefault();
    //   var fname = $('#contactName').val();
    //   var message = $('#contactMessage').val();
    //   var address = $('#contactEmail').val();
    //   var enterCodeThree = $('#enterCodeThree').val();
    //   $(".errorsms").remove();
    //   if (fname.length < 1) {
    //     $('#contactName').after('<p class="errorsms mdtxt">This field is required</p>');
    //   }
    //   if (message.length < 1) {
    //     $('#contactMessage').after('<p class="errorsms mdtxt">This field is required</p>');
    //   }
    //   if (enterCodeThree.length < 1) {
    //     $('#enterCodeThree').after('<p class="errorsms mdtxt">This field is required</p>');
    //   }
    //   if (address.length < 1) {
    //     $('#contactEmail').after('<p class="errorsms mdtxt">This field is required</p>');
    //   } else {
    //     var regEx = /^[A-Z0-9][A-Z0-9._%+-]{0,63}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/;
    //     var validEmail = regEx.test(address);
    //   }
    //   if (document.querySelector('.errorsms') == null) {
    //     $('.errorget').html('Your Message is send!');
    //     setTimeout(function() {
    //       $(".errorget").hide(500);
    //     }, 1500);
    //   }
    // });

    // Investment Range Slider
    var output = $("output")[0];
    var twoPer = document.getElementById("bronzeDaily");
    var twoTotalPer = document.getElementById("bronzeTotal");
    var twoHalfPer = document.getElementById("silverDaily");
    var twoHalfTotalPer = document.getElementById("silverTotal");
    var threePer = document.getElementById("goldDaily");
    var threeTotal = document.getElementById("goldTotal");
    $(document).on("input", ".range-slider", function (e) {
      output.innerHTML = e.currentTarget.value;
      twoPer.innerHTML =
        ((e.currentTarget.value * 2) / 100).toFixed(2) + " USD";
      twoTotalPer.innerHTML =
        (((e.currentTarget.value * 2) / 100) * 15).toFixed(2) + " USD";
      twoHalfPer.innerHTML =
        ((e.currentTarget.value * 2.5) / 100).toFixed(2) + " USD";
      twoHalfTotalPer.innerHTML =
        (((e.currentTarget.value * 2.5) / 100) * 30).toFixed(2) + " USD";
      threePer.innerHTML =
        ((e.currentTarget.value * 3) / 100).toFixed(2) + " USD";
      threeTotal.innerHTML =
        (((e.currentTarget.value * 3) / 100) * 45).toFixed(2) + " USD";
    });
    $(document).on("input", ".range-amount", function (e) {
      output.innerHTML = e.currentTarget.value;
      twoPer.innerHTML =
        ((e.currentTarget.value * 2) / 100).toFixed(2) + " USD";
      twoTotalPer.innerHTML =
        (((e.currentTarget.value * 2) / 100) * 15).toFixed(2) + " USD";
      twoHalfPer.innerHTML =
        ((e.currentTarget.value * 2.5) / 100).toFixed(2) + " USD";
      twoHalfTotalPer.innerHTML =
        (((e.currentTarget.value * 2.5) / 100) * 30).toFixed(2) + " USD";
      threePer.innerHTML =
        ((e.currentTarget.value * 3) / 100).toFixed(2) + " USD";
      threeTotal.innerHTML =
        (((e.currentTarget.value * 3) / 100) * 45).toFixed(2) + " USD";
    });

    // Transaction Data Tab
    $(".transaction-data").hide();
    $(".transaction-data:first").show();

    $(".transaction-data-tab").on("click", function () {
      $(".transaction-data-tab").removeClass("transaction-data-active");
      $(this).addClass("transaction-data-active");
      $(".transaction-data").hide();

      var activeTab = $(this).attr("href");
      $(activeTab).fadeIn();
      return false;
    });

        // Feature Slider
        var simplySlider = $(".simply-wrapper");
        simplySlider.owlCarousel({
          loop: true,
          margin: 24,
          nav: false,
          dots: false,
          autoplay: true,
          autoplayTimeout: 3000,
          autoplayHoverPause: true,
          items: 4,
          responsive: {
            0: {
              items: 1,
            },
            576: {
              items: 2,
            },
            768: {
              items: 2,
            },
            992: {
              items: 3,
            },
            1200: {
              items: 4,
            }
          },
        });
    
        $(".next-simple-slider").click(function () {
          simplySlider.trigger("next.owl.carousel");
        });

    // Team Slider
    var teamSlider = $(".team-slider");
    teamSlider.owlCarousel({
      loop: true,
      margin: 24,
      nav: false,
      dots: false,
      autoplay: true,
      autoplayTimeout: 3000,
      autoplayHoverPause: true,
      items: 2,
      responsive: {
        0: {
          items: 1,
        },
        576: {
          items: 2,
        },
      },
    });

    $(".btr").click(function () {
      teamSlider.trigger("next.owl.carousel");
    });

    // Testimonial Slider
    $(".testimonial-slider-wrapper").owlCarousel({
      stagePadding: 116,
      loop: true,
      margin: 24,
      nav: false,
      dots: false,
      autoplay: true,
      autoplayTimeout: 3000,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 1,
          stagePadding: 12,
        },
        576: {
          items: 1,
          stagePadding: 80,
        },
        768: {
          items: 1,
          stagePadding: 160,
        },
        992: {
          items: 2,
          stagePadding: 24,
        },
        1200: {
          items: 2,
          stagePadding: 80,
        },
        1440: {
          items: 2,
          stagePadding: 236,
        },
        1600: {
          items: 3,
          stagePadding: 24,
        },
        1920: {
          items: 3,
        },
      },
    });

    // Password Toggle
    $(".toggle-password").click(function () {
      var x = document.getElementById("password-field");
      if (x.type === "password") {
        x.type = "text";
        $(this).removeClass("fa-eye-slash").addClass("fa-eye");
      } else {
        x.type = "password";
        $(this).removeClass("fa-eye").addClass("fa-eye-slash");
      }
    });
    // Join Now Password Toggle
    $(".toggle-password-one").click(function () {
      var x = document.getElementById("rPass");
      if (x.type === "password") {
        x.type = "text";
        $(this).removeClass("fa-eye-slash").addClass("fa-eye");
      } else {
        x.type = "password";
        $(this).removeClass("fa-eye").addClass("fa-eye-slash");
      }
    });

    $(".toggle-password-two").click(function () {
      var x = document.getElementById("rcPass");
      if (x.type === "password") {
        x.type = "text";
        $(this).removeClass("fa-eye-slash").addClass("fa-eye");
      } else {
        x.type = "password";
        $(this).removeClass("fa-eye").addClass("fa-eye-slash");
      }
    });

    // Dashboard Tab Btn Active
    $(".dashboard-tab-btn").on("click", function () {
      $(".dashboard-tab-btn").removeClass("dashboard-tab-btn-active");
      $(this).addClass("dashboard-tab-btn-active");
    });

    // Dashboard Tab
    $(".dashboard-tab-content").hide();
    $(".dashboard-tab-content:first").show();

    $(".dashboard-tab").on("click", function () {
      $(".dashboard-tab").removeClass("dashboard-tab-btn-active");
      $(this).addClass("dashboard-tab-btn-active");
      $(".dashboard-tab-content").hide();

      var actveTab = $(this).attr("href");
      $(actveTab).fadeIn();
      return false;
    });

    $(".dashboard-text-tab").on("click", function () {
      $(".dashboard-text-tab").removeClass("dashboard-tab-btn-active");
    });

    // Dashboard Tab Btn Active
    $(".pull-sidebar").on("click", function () {
      $("body").toggleClass("bopa");
      $(".sidebar-icon").toggleClass("sidebar-icon-active");
      $(".dashboard-left-area").toggleClass("dashboard-left-area-active");
    });

    // Select Language
    $(".method-pick").niceSelect();

    if ($("#referralFrom").length) {
      $("#referralFrom").datepicker();
    }

    if ($("#referralTo").length) {
      $("#referralTo").datepicker();
    }

    if ($("#transactionFrom").length) {
      $("#transactionFrom").datepicker();
    }

    if ($("#transactionTo").length) {
      $("#transactionTo").datepicker();
    }

    $(".terms-tab-btn").on("click", function () {
      $(".terms-tab-btn").removeClass("terms-tab-btn-active");
      $(this).addClass("terms-tab-btn-active");
    });

    // Faq Tab
    $(".faq-tab-content").hide();
    $(".faq-tab-content:first").show();

    $(".faq-tab-btn").on("click", function () {
      $(".faq-tab-btn").removeClass("faq-tab-btn-active");
      $(this).addClass("faq-tab-btn-active");
      $(".faq-tab-content").hide();

      var actveTabF = $(this).attr("href");
      $(actveTabF).fadeIn();
      return false;
    });

    // Blog One Tab
    $(".blog-tab-content").hide();
    $(".blog-tab-content:first").show();

    $(".blog-tab-btn").on("click", function () {
      $(".blog-tab-btn").removeClass("blog-tab-btn-active");
      $(this).addClass("blog-tab-btn-active");
      $(".blog-tab-content").hide();

      var actveTabBlog = $(this).attr("href");
      $(actveTabBlog).fadeIn();
      return false;
    });

    // Scroll Bottom To Top
    var ScrollTop = $(".scrollToTop");
    $(window).on("scroll", function () {
      if ($(this).scrollTop() < 500) {
        ScrollTop.removeClass("active");
      } else {
        ScrollTop.addClass("active");
      }
    });
    $(".scrollToTop").on("click", function () {
      $("html, body").animate(
        {
          scrollTop: 0,
        },
        500
      );
      return false;
    });
  });
})(jQuery);
