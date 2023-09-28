{include file="auth_header.tpl"}
<main class="flex w-full flex-col items-center bg-white dark:bg-navy-700 lg:max-w-md">
  <div class="flex w-full max-w-sm grow flex-col justify-center p-5">
    <div class="text-center">
      <a href="?a=home">
        <img src="assets/images/logo.svg" width="375px" height="95px" alt="site-logo">
      </a>
      <div class="mt-4">
        <h2 class="text-2xl font-semibold text-slate-600 dark:text-navy-100">
          Welcome To Gemcrest
        </h2>
        <p class="text-slate-400 dark:text-navy-300">
          Please sign up to continue
        </p>
      </div>
    </div>


    {if $deny_registration}
      We are closed for new registrations now.
    {elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref}
      You do not have a upline. Our system require a upline for each user.
    {else}
      

      {if $errors}
        <ul style="color:red">
          {section name=e loop=$errors}
            {if $errors[e] eq 'full_name'}
              <li>Please enter your full name!
              {/if}
              {if $errors[e] eq 'address'}
              <li>Please enter your address!
              {/if}
              {if $errors[e] eq 'city'}
              <li>Please enter your city!
              {/if}
              {if $errors[e] eq 'state'}
              <li>Please enter your state!
              {/if}
              {if $errors[e] eq 'zip'}
              <li>Please enter your zip!
              {/if}
              {if $errors[e] eq 'country'}
              <li>Please choose your country!
              {/if}
              {if $errors[e] eq 'username'}
              <li>Please enter valid username! It should contains English letters and digits only.
              {/if}
              {if $errors[e] eq 'username_exists'}
              <li>Sorry, such user already exists! Please try another username.
              {/if}
              {if $errors[e] eq 'email_exists'}
              <li>Sorry, such email already exists! Please try another email.
              {/if}
              {if $errors[e] eq 'password'}
              <li>Please enter a password!
              {/if}
              {if $errors[e] eq 'password_confirm'}
              <li>Please check your password!
              {/if}
              {if $errors[e] eq 'password_too_small'}
              <li>The password you provided is too small, please enter at least {$settings.min_user_password_length} characters!
              {/if}
              {if $errors[e] eq 'transaction_code'}
              <li>Please enter the Transaction Code!
              {/if}
              {if $errors[e] eq 'transaction_code_confirm'}
              <li>Please check your Transaction Code!
              {/if}
              {if $errors[e] eq 'transaction_code_too_small'}
              <li>The Transaction Code you provided is too small, please enter at least {$settings.min_user_password_length}
                characters!
              {/if}
              {if $errors[e] eq 'transaction_code_vs_password'}
              <li>The Transaction Code should differ from the Password!
              {/if}
              {if $errors[e] eq 'email'}
              <li>Please enter your e-mail!
              {/if}
              {if $errors[e] eq 'email2'}
              <li>Please check your email!
              {/if}
              {if $errors[e] eq 'agree'}
              <li>You have to agree with the Terms and Conditions!
              {/if}
              {if $errors[e] eq 'turing_image'}
              <li>Enter the verification code as it is shown in the corresponding box.
              {/if}
              {if $errors[e] eq 'no_upline'}
              <li>The system requires an upline to register. {if $settings.get_rand_ref}You have to be agreed to random one or
                found a referral link in the net.{/if}
              {/if}
              {if $errors[e] eq 'ip_exists_in_database'}
              <li>Your IP already exists in our database. Sorry, but registration impossible.
              {/if}

              {if $errors[e] eq 'invalid_account_format'}
                {foreach from=$account_errors item=err}
                <li>{$err}
                {/foreach}
              {/if}

              <br>
            {/section}
        </ul>
      {/if}
      <form
        method=post
        onsubmit="return checkform()"
        name="regform"
      >
        <input
          type=hidden
          name=a
          value="signup"
        >
        <input
          type=hidden
          name=action
          value="signup"
        >

        <div class="mt-4 space-y-4">

          <!--Full Name-->
          {include 
                    file="textinput.tpl" 
                    placeholder="Full Name" 
                    name="fullname" 
                    value=$frm.fullname 
                    icon='images/svg/form/name.svg'
                  }


          <!--Username-->
          {include 
                    file="textinput.tpl" 
                    placeholder="Username" 
                    name="username" 
                    value=$frm.username 
                    icon='images/svg/form/name.svg'
                  }

          <!--Define Password-->
          {include 
                    file="textinput.tpl" 
                    placeholder="Password" 
                    name="password" 
                    value=$frm.password 
                    icon='images/svg/form/password.svg'
                  }

          <!--Retype Password-->
          {include 
                    file="textinput.tpl" 
                    placeholder="Confirm Password" 
                    name="password2" 
                    value=$frm.password2 
                    icon='images/svg/form/password.svg'
                  }

          <!--Email-->
          {include 
                    file="textinput.tpl" 
                    placeholder="Email" 
                    name="email" 
                    value=$frm.email 
                    icon='images/svg/form/email.svg'
                  }

          <!--Confirm Email-->
          {include 
                    file="textinput.tpl" 
                    placeholder="Confirm Email" 
                    name="email1" 
                    value=$frm.email1 
                    icon='images/svg/form/email.svg'
                  }


          <!--Secret Question-->
          {include 
                      file="textinput.tpl" 
                      placeholder="Secret Question" 
                      name="sq" 
                      value=$frm.sq 
                      icon='images/svg/form/question.svg'
                    }


          <!--Secret Answer-->
          {include 
                      file="textinput.tpl" 
                      placeholder="Secret Answer" 
                      name="sa" 
                      value=$frm.sa 
                      icon='images/svg/form/question.svg'
                    }
{* 
          {foreach item=p from=$mpay_accounts}
            {foreach item=ps from=$p.accounts}
              {include 
                                    file="textinput.tpl" 
                                    placeholder="Your {$p.name} {$ps.name}"
              name="pay_account[{$p.id}][{$ps.name|escape:html}]"
              value=$ps.value
              icon='images/svg/form/wallet.svg'
              }
            {/foreach}
          {/foreach} *}

          <div class="mt-4 flex items-center space-x-2">
            <input
              class="form-checkbox is-basic h-5 w-5 rounded border-slate-400/70 checked:border-primary checked:bg-primary hover:border-primary focus:border-primary dark:border-navy-400 dark:checked:border-accent dark:checked:bg-accent dark:hover:border-accent dark:focus:border-accent"
              type="checkbox"
              name=agree
              value=1
              {if $frm.agree}checked{/if}
            />
            <p class="line-clamp-1">
              I agree with
              <a
                href="{"?a=rules"|encurl}"
                class="text-slate-400 hover:underline dark:text-navy-300"
              >
                privacy policy
              </a>
            </p>
          </div>


          {* {foreach from=$pay_accounts item=ps}
              <div>
                <div>Your {$ps.name} Account:</div>
                <div><input
                    type=text
                    class=inpts
                    size=30
                    name=pay_account[{$ps.id}]
                    value="{$ps.account|escape:html}"
                    data-validate="{$ps.validate.func}"
                    data-validate-{$ps.validate.func}="{$ps.validate[$ps.validate.func]}"
                    data-validate-notice="{$ps.validate.notification|escape:html}"
                    placeholder="{$ps.validate.placeholder|escape:html}"
                  ></div>
              </div>
            {/foreach} *}


          {if $settings.use_referal_program}
            {if $referer}
              {include 
                                    file="disabled_input.tpl" 
                                    placeholder={$referer.username|escape:html}
              icon='images/svg/form/name.svg'
              }
            {else}
              {if $settings.force_upline}
                {if $settings.get_rand_ref}
                  <div>
                    <div colspan=2>
                      You do not have an upline. Our system requires an upline for each user. You'll have to agree to get a random
                      one or find a referral link on the net.
                      <input
                        type=checkbox
                        name="rand_ref"
                        value=1
                      >
                    </div>
                  </div>
                {else}
                  <div>
                    <div colspan=2>
                      You do not have an upline. Our system requires an upline for each user.
                    </div>
                  </div>
                {/if}
              {/if}
            {/if}
          {/if}

          <button
            type="submit"
            class="btn mt-10 h-10 w-full bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90"
          >
            Register
          </button>

        </div>


      </form>
    {/if}

    <div class="mt-4 text-center text-xs+">
      <p class="line-clamp-1">
        <span>Already have an account? </span>
        <a
          class="text-primary transition-colors hover:text-primary-focus dark:text-accent-light dark:hover:text-accent"
          href="{"?a=login"|encurl}"
        >Sign In</a>
      </p>
    </div>
  </div>
</main>
{include file="auth_footer.tpl"}
