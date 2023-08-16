{include file="main_header.tpl" current_page="home"}

<!-- Breadcrumbs Start -->
<div class="rs-breadcrumbs img9">
  <div class="container">
    <div class="breadcrumbs-inner">
      <h1 class="page-title">
        Have questions - contact us
        <span class="watermark">Contact</span>
      </h1>

    </div>
  </div>
</div>
<!-- Breadcrumbs End -->

  {if $say eq 'send'}

  <div class="rs-about main-home pt-50 pb-50 md-pt-20 md-pb-20">
    <div class="container">
        <div class="row y-middle">
            <div class="col-lg-1"></div>
            <div class="col-lg-10">
                <div class="sec-title">
                    <span class="sub-text" style="color: green; font-weight: bold; font-size: 20px;">Email  has been successfully sent. We will get back to you in next 24 hours. Thank you. 
                    </span>
                </div>
            </div>
            <div class="col-lg-1"></div>
        </div>
    </div>
</div>
{/if}



  <!-- Contact Section Start -->
  <div class="rs-contact contact-style2 bg9 pt-100 pb-100 md-pt-70 md-pb-70">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 pr-40 md-pr-15 md-mb-50">
          <div class="contact-map">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2484.063441096482!2d-0.1427843842305301!3d51.49370327963282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48761aca0bae0b01%3A0xee9bff287db80c01!2sMomo%20Kovacevic!5e0!3m2!1sen!2sus!4v1648124460276!5m2!1sen!2sus"
              width="600"
              height="450"
              style="border:0;"
              allowfullscreen=""
              loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"
            ></iframe>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="sec-title mb-45 md-mb-25">
            <h2 class="title pb-20">
              Get in Touch with <span>US.</span>
            </h2>
            <p class="margin-0">Feedback is extremely important to us to make sure we’re providing you with the platform
              and service that you deserve. </p>
          </div>
          <div class="contact-wrap">
            <div id="form-messages"></div>

            <script language=javascript>
              {if $userinfo.logged == 1}
                {literal}
                  function checkform() {
                    if (document.mainform.message.value == '') {
                      alert("Please type your message!");
                      document.mainform.message.focus();
                      return false;
                    }
                    return true;
                  }
                {/literal}
              {else}
                {literal}
                  function checkform() {
                    if (document.mainform.name.value == '') {
                      alert("Please type your full name!");
                      document.mainform.name.focus();
                      return false;
                    }
                    if (document.mainform.email.value == '') {
                      alert("Please enter your e-mail address!");
                      document.mainform.email.focus();
                      return false;
                    }
                    if (document.mainform.message.value == '') {
                      alert("Please type your message!");
                      document.mainform.message.focus();
                      return false;
                    }
                    return true;
                  }
                {/literal}
              {/if}
            </script>



            <form
              method=post
              name=mainform
              onsubmit="return checkform()"
            >
              <input
                type=hidden
                name=a
                value=support
              >
              <input
                type=hidden
                name=action
                value=send
              >

              {if $errors}
                <ul style="color:red">
                  {if $errors.turing_image == 1}
                    <li>Invalid turing image</li>
                  {/if}
                  {if $errors.invalid_email == 1}
                    <li>Invalid email address</li>
                  {/if}
                </ul>
              {/if}

              <fieldset>
                <div class="row">

                  <fieldset>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 mb-30">
                            {if $userinfo.logged}
                            <input class="from-control" type="text" id="name" name="name" placeholder="Name" value="{$userinfo.name}" disabled>
                            {else}
                            
                            <input class="from-control" type="text" id="name" name="name" placeholder="Name" value="{$frm.name|escape:htmlall}" required="">
                            {/if}
                            
                        </div> 
            
                        <div class="col-lg-6 col-md-6 col-sm-6 mb-30">
                            {if $userinfo.logged}
                            <input class="from-control" type="text" id="email" value="{$userinfo.email}" name="email" placeholder="E-mail" required="">
                            {else}
                            <input class="from-control" type="text" id="email" value="{$frm.email|escape:htmlall}" name="email" placeholder="E-mail" required="">
                            {/if}
                        </div>
                  
                        <div class="col-lg-12 mb-35">
                            <textarea class="from-control" id="message" name="message" placeholder="Your message Here" required=""></textarea>
                        </div>
                    </div>
                    <div class="btn-part">                                            
                        <div class="form-group mb-0">
                            <input class="readon submit" type="submit" value="Send">
                        </div>
                    </div> 
                </fieldset>

                </div>
              </fieldset>
            </form>

          </div>
        </div>
      </div>
    </div>
    <!-- Contact Icon Section Start -->
    <div class="rs-contact main-home">
      <div class="container">
        <div class="contact-icons-style box-address pt-100 md-pt-70">
          <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 md-mb-30">
              <div class="contact-item">
                <div class="contact-icon">
                  <img
                    src="assets/images/contact/icons/1.png"
                    alt="images"
                  >
                </div>
                <div class="content-text">
                  <h2 class="title"><a href="#">London</a></h2>
                  <p class="services-txt">Douglas Houghton House, 231 Vauxhall Bridge Road, SW1V 1AD, United Kingdom</p>
                </div>
              </div>
            </div>



            <div class="col-lg-3 col-md-6 col-sm-6 xs-mb-30">
              <div class="contact-item">
                <div class="contact-icon">
                  <img
                    src="assets/images/contact/icons/3.png"
                    alt="images"
                  >
                </div>
                <div class="content-text">
                  <h2 class="title"><a href="#">Email us</a></h2>
                  <a href="mailto:support@polticventure.co">support@polticventure.co</a><br>

                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="contact-item">
                <div class="contact-icon">
                  <img
                    src="assets/images/contact/icons/4.png"
                    alt="images"
                  >
                </div>
                <div class="content-text">
                  <h2 class="title"><a href="#">Call us</a></h2>
                  <a href="tel:+447951359365">+447951359365</a><br>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Contact Icon Section End -->
  </div>
  <!-- Contact Section End -->


{include file="main_footer.tpl"}
