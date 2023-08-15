{include file="auth_header.tpl"}

{literal}
  <script language=javascript>
    function checkform() {
      if (document.mainform.username.value == '') {
        alert("Please type your username!");
        document.mainform.username.focus();
        return false;
      }
      if (document.mainform.password.value == '') {
        alert("Please type your password!");
        document.mainform.password.focus();
        return false;
      }
      return true;
    }
  </script>
{/literal}

{if $frm.say eq 'invalid_login'}
  <h3>Login error:</h3><br><br>

  Your login or password or turing image code is wrong. Please check this information.
{/if}
<form
  method=post
  name=mainform
  onsubmit="return checkform()"
  class="mt-4"
>
  <input
    type=hidden
    name=a
    value='do_login'
  >
  <input
    type=hidden
    name=follow
    value='{$frm.follow}'
  >
  <input
    type=hidden
    name=follow_id
    value='{$frm.follow_id}'
  >

  {include file="form_text.tpl" label="User Name" placeholder="Enter Your Username" name="username"}

  {include file="form_password.tpl" label="Password" placeholder="Enter Password" name="password"}

  <div class="form-row">
    <div class="col-sm-6">
      <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Remmber me</label>
      </div>
    </div>
    <div class="col-sm-6 text-sm-right">
      <p class="f-size-14">Haven't an account? <a href="/?a=signup" class="base--color">Sign Up</a></p>
      <p class="f-size-14 mt-4">Did you forget your password? <a href="/?a=forgot_password" class="base--color">remember your login information</a></p>
    </div>
  </div>
  <div class="mt-3">
    <button type="submit" class="cmn-btn">Login</button>
  </div>



{* 
  <table
    cellspacing=0
    cellpadding=2
    border=0
  >
    <tr>
      <td>Username:</td>
      <td><input
          type=text
          name=username
          value='{$frm.username|escape:"html"}'
          value='{$value|escape:"html"}'
          value="$frm.username"
          class=inpts
          size=30
          autofocus="autofocus"
        ></td>
    </tr>
    <tr>
      <td>Password:</td>
      <td><input
          type=password
          name=password
          value=''
          class=inpts
          size=30
        ></td>
    </tr>
    {include file="captcha.tpl" action="login"}
    <tr>
      <td>&nbsp;</td>
      <td><input
          type=submit
          value="Login"
          class=sbmt
        ></td>
    </tr>
  </table> *}
  
</form>


{include file="auth_footer.tpl"}
