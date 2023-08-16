{include file="auth_header.tpl" subheader="Log in to Explore Your Financial Potential" title="Login"}

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

  {include file="form_text.tpl" type="text" label="User Name" placeholder="Enter Your Username" name="username" value=$frm.username}

  {include file="form_text.tpl" type="password" label="Password" placeholder="Enter Password" name="password"}

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

</form>


{include file="auth_footer.tpl"}
