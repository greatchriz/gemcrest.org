{include file="header.tpl"}


{literal}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
    return false;
  }
  return true;
}
</script>
{/literal}



{if $frm.say eq 'invalid_login'}
  <section class="subpage_wrap">
    <div class="container">
      <div class="login-container2">
        <div class="row">
          <div class="col-md-6 mx-auto">
            <div class="signup-title mb-5">
              <span>Access Account</span>Member Login
            </div>

            <div class="login-form register-form">
              <script language="javascript">
                function checkform() {
                  if (document.mainform.username.value == "") {
                    alert("Please type your username!");
                    document.mainform.username.focus();
                    return false;
                  }
                  if (document.mainform.password.value == "") {
                    alert("Please type your password!");
                    document.mainform.password.focus();
                    return false;
                  }
                  return true;
                }
              </script>

              <form
                method="post"
                name="mainform"
                onsubmit="return checkform()">
                  <input type=hidden name=a value='do_login'>
                  <input type=hidden name=follow value='{$frm.follow}'>
                  <input type=hidden name=follow_id value='{$frm.follow_id}'>
                    <div class="mb-2">
                      <label class="form-label">Username</label>
                      <input
                        type="text"
                        name="username"
                        value=""
                        class="form-control"
                        size="30"
                        autofocus="autofocus" />
                    </div>
  
                    <div class="mb-2">
                      <label class="form-label">Password</label>
                      <input
                        type="password"
                        name="password"
                        value=""
                        class="form-control"
                        size="30" />
                    </div>
  
                    <div class="mt-3">
                      <input
                        type="submit"
                        value="Login"
                        class="btn btn-primary" />
                    </div>
  
            
                  </form>
  
                  <div class="form-footer">
                    <a href="/?a=forgot_password"
                      >Recover password information</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>



{include file="footer.tpl"}
