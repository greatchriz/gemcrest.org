{include file="header.tpl"}
<div class="dashboard-tab-content" id="profile">
  <div class="upload-avatar wow fadeInUp" data-wow-duration="0.4s">
      <div class="d-flex flex-wrap flex-row align-items-center">
          <div class="upload-avatar-wrapper d-flex align-items-center justify-content-center">
              <img src="dashboard/images/icons/upload-avatar.png" alt="Avatar">
              <div class="camera d-inline-flex align-items-center justify-content-center">
                  <form action="#" method="POST" id="uploadAvatar">
                      <input type="file" name="upload-avatar" id="upload">
                      <label for='upload'>
                          <img src="dashboard/images/icons/camera.png" alt="Upload">
                      </label>
                  </form>
              </div>
          </div>
          <div class="unique">
              <h4>Upload Avatar</h4>
              <p class="small">Jpg, Png (360 x 360) Pixels</p>
          </div>
      </div>
  </div>
  <div class="personal-info mtf-30 wow fadeInUp" data-wow-duration="0.4s">
      <h5>Personal Information</h5>
      <form action="#0" method="post" id="personalInformation" class="mt-40">
          <div class="row d-flex align-items-center neutral-bottom">
              <div class="col-md-6">
                  <div class="input-one">
                      <label for="firstName">First Name</label>
                      <input type="text" name="first_name" id="firstName" required="required" placeholder="Harry">
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="input-one">
                      <label for="lastName">Last Name</label>
                      <input type="text" name="last_name" id="lastName" required="required" placeholder="Shaw">
                  </div>
              </div>
          </div>
          <div class="row d-flex align-items-center neutral-bottom mtf-30">
              <div class="col-md-6">
                  <div class="input-one">
                      <label for="userName">Your Email Address</label>
                      <input type="email" name="user_name" id="userName" required="required" placeholder="info@example.com">
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="input-one">
                      <label for="phoneNumber">Mobile No</label>
                      <input type="tel" name="phone_number" id="phoneNumber" required="required" placeholder="+17087362094">
                  </div>
              </div>
          </div>
          <div class="input-one mtf-30">
              <label for="address">Mobile No</label>
              <input type="text" name="address" id="address" required="required" placeholder="Enter Address">
          </div>
          <div class="row d-flex align-items-center neutral-bottom mtf-30">
              <div class="col-md-6">
                  <div class="input-one">
                      <label for="city">City</label>
                      <input type="text" name="your_city" id="city" required="required" placeholder="Enter Your City">
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="input-one">
                      <label for="state">State</label>
                      <input type="text" name="your_state" id="state" required="required" placeholder="Enter Your State">
                  </div>
              </div>
          </div>
          <button type="submit" class="primary-btn mt-40">Save Changes <i class="icon-right-arrow"></i></button>
      </form>
  </div>
  <div class="personal-info mtf-30 wow fadeInUp" data-wow-duration="0.4s">
      <h5>Payment Data:</h5>
      <form action="#0" method="post" id="paymentData" class="mt-40">
          <div class="input-one mtf-30">
              <label for="perfectMoney">Perfect Money:</label>
              <div class="icon-input">
                  <input type="text" name="perfect_money" id="perfectMoney" required="required">
                  <div class="icon">
                      <img src="dashboard/images/icons/perfect-money.png" alt="Perfect Money">
                  </div>
              </div>
          </div>
          <div class="input-one mtf-30">
              <label for="bitcoin">Bitcoin:</label>
              <div class="icon-input">
                  <input type="text" name="bit_coin" id="bitcoin" required="required">
                  <div class="icon">
                      <img src="dashboard/images/icons/bitcoin.png" alt="Bitcoin">
                  </div>
              </div>
          </div>
          <div class="input-one mtf-30">
              <label for="ethereum">Ethereum:</label>
              <div class="icon-input">
                  <input type="text" name="ether_eum" id="ethereum" required="required">
                  <div class="icon">
                      <img src="dashboard/images/icons/ethereum.png" alt="Ethereum">
                  </div>
              </div>
          </div>
          <div class="input-one mtf-30">
              <label for="ripple">Ripple:</label>
              <div class="icon-input">
                  <input type="text" name="rip-ple" id="ripple" required="required">
                  <div class="icon">
                      <img src="dashboard/images/icons/ripple.png" alt="Ripple">
                  </div>
              </div>
          </div>
          <div class="input-one mtf-30">
              <label for="tron">Tron:</label>
              <div class="icon-input">
                  <input type="text" name="tr-on" id="tron" required="required">
                  <div class="icon">
                      <img src="dashboard/images/icons/tron.png" alt="Tron">
                  </div>
              </div>
          </div>
          <div class="input-one mtf-30">
              <label for="tetherUsd">Tether Usd:</label>
              <div class="icon-input">
                  <input type="password" name="tether_usd" id="tetherUsd" required="required">
                  <div class="icon">
                      <img src="dashboard/images/icons/tether-usd.png" alt="Tether Usd">
                  </div>
              </div>
          </div>
          <button type="submit" class="primary-btn mt-40">Save Changes <i class="icon-right-arrow"></i></button>
      </form>
  </div>
  <div class="personal-info mtf-30 wow fadeInUp" data-wow-duration="0.4s">
      <h5>Change Password:</h5>
      <form action="#0" method="post" id="changePassword" class="mt-40">
          <div class="input-one mtf-30">
              <label for="oldPass">Old Password</label>
              <input type="password" name="old_pass" id="oldPass" required="required" placeholder="Enter Your Old Password">
          </div>
          <div class="input-one mtf-30">
              <label for="newPass">New Password</label>
              <input type="password" name="new_pass" id="newPass" required="required" placeholder="Enter New Password">
          </div>
          <div class="input-one mtf-30">
              <label for="repeatPass">Repeat The New Password</label>
              <input type="password" name="repeat_pass" id="repeatPass" required="required" placeholder="Repeat New Password">
          </div>
          <button type="submit" class="primary-btn mt-40">Save Changes <i class="icon-right-arrow"></i></button>
      </form>
  </div>
</div>

{include file="footer.tpl"}