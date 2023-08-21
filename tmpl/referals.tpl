{include file="header.tpl"}
<div class="dashboard-tab-content" id="referrals">
  <div class="referral p-40-30 wow fadeInUp" data-wow-duration="0.4s">
      <h4>Share The Referral Link</h4>
      <p>You can also share your referral link by copying and sending it or sharing it on
          your social media.</p>
      <div class="row d-flex align-items-center mt-25">
          <div class="col-md-8">
              <div class="copy-link-wrapper">
                  <input type="text" value="gemcrest.org/?ref={$userinfo.username}" id="refLink" disabled="disabled">
                  <button class="primary-btn">Copy Link</button>
              </div>

              <script>
                function myFunction() {
                // Get the text field
                var copyText = document.getElementById("refLink");

                // Select the text field
                copyText.select();
                copyText.setSelectionRange(0, 99999); // For mobile devices

                // Copy the text inside the text field
                navigator.clipboard.writeText(copyText.value);

                // Alert the copied text
                alert("Copied the text: " + copyText.value);
              }
              </script>
          </div>
          <div class="col-md-4">
              <div class="social-bar">
                  <div class="social-box-third text-center text-md-end">
                      <a href="#">
                          <i class="fab fa-facebook-f"></i>
                      </a>
                      <a href="#">
                          <i class="fab fa-twitter"></i>
                      </a>
                      <a href="#">
                          <i class="fab fa-instagram"></i>
                      </a>
                      <a href="#" class="mr-0">
                          <i class="fab fa-linkedin-in"></i>
                      </a>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <div class="row mtf-30">
      <div class="col-lg-7">
          <div class="referral-info d-flex align-items-center wow fadeInUp" data-wow-duration="0.4s">
              <img src="dashboard/images/dashboard/referral.png" alt="Referral">
              <div>
                  <h5>Earned Referral</h5>
                  <h4>$200.00</h4>
              </div>
          </div>
      </div>
      <div class="col-lg-5">
          <div class="referral-activities wow fadeInUp" data-wow-duration="0.4s">
              <h5>Referral Activities</h5>
              <p>Referrals<span>: 30</span></p>
              <p>Active<span>: 25</span></p>
              <p>Referral Level<span>: 3</span></p>
          </div>
      </div>
  </div>
  <div class="filter mtf-30">
      <div class="row d-flex align-items-end">
          <div class="col-lg-9">
              <div class="row">
                  <div class="col-sm-6">
                      <div class="date-select wow fadeInUp" data-wow-duration="0.4s">
                          <label for="referralFrom">Date From</label>
                          <div class="img-input d-flex align-items-center">
                              <img src="dashboard/images/icons/calendar.png" alt="Date Picker">
                              <input type="text" name="referral_from" id="referralFrom" placeholder="Date From">
                          </div>
                      </div>
                  </div>
                  <div class="col-sm-6">
                      <div class="date-select wow fadeInUp" data-wow-duration="0.4s">
                          <label for="referralTo">Date To</label>
                          <div class="img-input d-flex align-items-center">
                              <img src="dashboard/images/icons/calendar.png" alt="Date Picker">
                              <input type="text" name="referral_to" id="referralTo" placeholder="Date To">
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <div class="col-lg-3">
              <div class="date-select wow fadeInUp" data-wow-duration="0.4s">
                  <a href="#0" class="primary-btn">Filter <i class="icon-right-arrow"></i></a>
              </div>
          </div>
      </div>
  </div>
  <div class="referral-table wow fadeInUp" data-wow-duration="0.4s">
      <div class="table-wrapper mtf-30">
          <table class="table">
              <thead>
                  <tr>
                      <th>Date & Time</th>
                      <th>Level</th>
                      <th>Username</th>
                      <th>E-mail</th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td>
                          Feb 14, 2020 20:53
                      </td>
                      <td>Level 1</td>
                      <td>Maxine24</td>
                      <td>
                          <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="e78e898188a7829f868a978b82c984888a">[email&#160;protected]</a>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Feb 14, 2020 20:53
                      </td>
                      <td>Level 1</td>
                      <td>Maxine24</td>
                      <td>
                          <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="21484f474e614459404c514d440f424e4c">[email&#160;protected]</a>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Feb 14, 2020 20:53
                      </td>
                      <td>Level 1</td>
                      <td>Maxine24</td>
                      <td>
                          <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f69f989099b6938e979b869a93d895999b">[email&#160;protected]</a>
                      </td>
                  </tr>
              </tbody>
          </table>
      </div>
  </div>
  <hr>
  <div class="row d-flex align-items-center">
      <div class="col-sm-6">
          <p class="small text-center text-sm-start">Showing 1 to 5 of 22 entries</p>
      </div>
      <div class="col-sm-6">
          <div class="pagination-wrapper d-flex justify-content-center justify-content-sm-end">
              <nav aria-label="...">
                  <ul class="pagination">
                      <li class="page-item">
                          <a class="page-link" href="#0" tabindex="-1">
                              <i class="fas fa-angle-left"></i>
                          </a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item">
                          <a class="page-link" href="#0">2</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#0">3</a></li>
                      <li class="page-item">
                          <a class="page-link" href="#0">
                              <i class="fas fa-angle-right"></i>
                          </a>
                      </li>
                  </ul>
              </nav>
          </div>
      </div>
  </div>
</div>
{include file="footer.tpl"}
