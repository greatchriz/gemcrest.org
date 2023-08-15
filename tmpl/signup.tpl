{include file="auth_header.tpl" subheader="Unlock Opportunities, Sign Up Today." title="Create an account"}

{if $deny_registration}
 We are closed for new registrations now.
{elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref}
 You  do not have a upline. Our system require a upline for each user.
{else}
 {literal}

 <script language=javascript>
 function checkform() {
  if (document.regform.fullname.value == '') {
    alert("Please enter your full name!");
    document.regform.fullname.focus();
    return false;
  }
 {/literal}
 {if $settings.use_user_location == 1}
 {literal}
  if (document.regform.address.value == '') {
    alert("Please enter your address!");
    document.regform.address.focus();
    return false;
  }
  if (document.regform.city.value == '') {
    alert("Please enter your city!");
    document.regform.city.focus();
    return false;
  }
  if (document.regform.state.value == '') {
    alert("Please enter your state!");
    document.regform.state.focus();
    return false;
  }
  if (document.regform.zip.value == '') {
    alert("Please enter your ZIP!");
    document.regform.zip.focus();
    return false;
  }
  if (document.regform.country.options[document.regform.country.selectedIndex].text == '--SELECT--') {
    alert("Please choose your country!");
    document.regform.country.focus();
    return false;
  }
 {/literal}
 {/if}
 {literal}
  if (document.regform.username.value == '') {
    alert("Please enter your username!");
    document.regform.username.focus();
    return false;
  }
  if (!document.regform.username.value.match(/^[A-Za-z0-9_\-]+$/)) {
    alert("For username you should use English letters and digits only!");
    document.regform.username.focus();
    return false;
  }
  if (document.regform.password.value == '') {
    alert("Please enter your password!");
    document.regform.password.focus();
    return false;
  }
  if (document.regform.password.value != document.regform.password2.value) {
    alert("Please check your password!");
    document.regform.password2.focus();
    return false;
  }
 {/literal}
 {if $settings.use_transaction_code}
 {literal}
  if (document.regform.transaction_code.value == '') {
    alert("Please enter your transaction code!");
    document.regform.transaction_code.focus();
    return false;
  }
  if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
    alert("Please check your transaction code!");
    document.regform.transaction_code2.focus();
    return false;
  }
 {/literal}
 {/if}
 {literal}
  if (document.regform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.regform.email.focus();
    return false;
  }
  if (document.regform.email.value != document.regform.email1.value) {
    alert("Please retupe your e-mail!");
    document.regform.email.focus();
    return false;
  }

  for (i in document.regform.elements) {
    f = document.regform.elements[i];
    if (f.name && f.name.match(/^pay_account/)) {
      if (f.value == '') continue;
      var notice = f.getAttribute('data-validate-notice');
      var invalid = 0;
      if (f.getAttribute('data-validate') == 'regexp') {
        var re = new RegExp(f.getAttribute('data-validate-regexp'));
        if (!f.value.match(re)) {
          invalid = 1;
        }
      } else if (f.getAttribute('data-validate') == 'email') {
        var re = /^[^\@]+\@[^\@]+\.\w{2,4}$/;
        if (!f.value.match(re)) {
          invalid = 1;
        }
      }
      if (invalid) {
        alert('Invalid account format. Expected '+notice);
        f.focus();
        return false;
      }
    }
  }

  if (document.regform.agree.checked == false) {
    alert("You have to agree with the Terms and Conditions!");
    return false;
  }

  return true;
 }

 function IsNumeric(sText) {
  var ValidChars = "0123456789";
  var IsNumber=true;
  var Char;
  if (sText == '') return false;
  for (i = 0; i < sText.length && IsNumber == true; i++) { 
    Char = sText.charAt(i); 
    if (ValidChars.indexOf(Char) == -1) {
      IsNumber = false;
    }
  }
  return IsNumber;
 }
 </script>
 {/literal}
 
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
    <li>The Transaction Code you provided is too small, please enter at least {$settings.min_user_password_length} characters!
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
    <li>The system requires an upline to register. {if $settings.get_rand_ref}You have to be agreed to random one or found a referral link in the net.{/if}
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
<form method=post onsubmit="return checkform()" name="regform" class="mt-4">
<input type=hidden name=a value="signup">
<input type=hidden name=action value="signup">

  {include file="form_text.tpl" label="Your Full Name" placeholder="Enter full name" name="fullname" type="text" value=$frm.fullname}

  {include file="form_text.tpl" label="Your Username" placeholder="Enter Username" name="username" type="text" value=$frm.username}

  {include file="form_text.tpl" label="Define Password" placeholder="Enter password" name="password" type="password" value=$frm.password}

  {include file="form_text.tpl" label="Retype Password" placeholder="Confirm password" name="password2" type="password" value=$frm.password2}

  {foreach from=$pay_accounts item=ps}
    <div class="form-group">
      <label>{$ps.name} Account</label>
      <input type="text" class="form-control" 
      name=pay_account[{$ps.id}]
      value="{$ps.account|escape:html}"
      data-validate="{$ps.validate.func}"
      data-validate-{$ps.validate.func}="{$ps.validate[$ps.validate.func]}"
      data-validate-notice="{$ps.validate.notification|escape:html}"
      placeholder="{$ps.validate.placeholder|escape:html}">
    </div>
  {/foreach}

  {foreach item=p from=$mpay_accounts}
    {foreach item=ps from=$p.accounts}
      <div class="form-group">
        <label>Your {$p.name} {$ps.name}</label>
        <input type="text" class="form-control" name="pay_account[{$p.id}][{$ps.name|escape:html}]" value="{$ps.value|escape:html}">
      </div>
    {/foreach}
    {/foreach}

    {include file="form_text.tpl" label="Your E-mail Address" placeholder="Enter E-mail Address " name="email" type="text" value=$frm.email}

    {include file="form_text.tpl" label="Retype E-mail Address" placeholder="Confirm E-mail Address " name="email1" type="text" value=$frm.email1}

    {if $settings.use_referal_program}
      {if $referer}
      <tr>
       <td>Your Upline:</td>
       <td>{*<a href="mailto:{$referer.email}">*}{$referer.name}{*</a>*} ({$referer.username|escape:html})</td>
      </tr>
      {else}
      {if $settings.force_upline}
       {if $settings.get_rand_ref}
        <tr>
         <td colspan=2>
          You do not have an upline. Our system requires an upline for each user. You'll have to agree to get a random one or find a referral link on the net.
          <input type=checkbox name="rand_ref" value=1>
         </td>
        </tr>
       {else}
        <tr>
         <td colspan=2>
          You do not have an upline. Our system requires an upline for each user.
         </td>
        </tr>
       {/if}
      {/if}
      {/if}
      {/if}

      <div class="form-row">
        <div class="col-sm-6">
          <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1" name=agree value=1 {if $frm.agree}checked{/if}>
            <label class="form-check-label" for="exampleCheck1">I agree with <a href="{"?a=rules"|encurl}">Terms and conditions</a></label>
          </div>
        </div>
        <div class="col-sm-6 text-sm-right">
          <p class="f-size-14">Have an account? <a href="/?a=login" class="base--color">Login</a></p>
        </div>
      </div>

      <div class="mt-3">
        <button type=submit class="cmn-btn">Register</button>
      </div>
</form>
{/if}
{include file="auth_footer.tpl"}