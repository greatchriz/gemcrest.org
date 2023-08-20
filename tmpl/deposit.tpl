{include file="header.tpl"}
<div class="dashboard-tab-content">
  <div class="deposit-range">
      <div class="row neutral-bottom">
          <div class="col-md-6 col-xxl-4">
              <div class="plan-single-item plan-single-bronze wow fadeInUp" data-wow-duration="0.4s">
                  <div class="icon-box">
                      <img src="dashboard/images/icons/bronze-plan.png" alt="Bronze Plan">
                  </div>
                  <h5 class="mb-35 mt-53">Bronze Plan</h5>
                  <h3 class="mb-20">50% <span>ROI</span></h3>
                  <p>Daily for 30 Days</p>
                  <div class="d-flex align-item-center justify-content-between plan-range-details mt-25">
                      <div class="align-items-center">
                          <p class="small">Min. Invest</p>
                          <h5>$20</h5>
                      </div>
                      <div>
                          <p class="small">Max. Invest</p>
                          <h5>$100</h5>
                      </div>
                  </div>
              </div>
          </div>
          <div class="col-md-6 col-xxl-4">
              <div class="plan-single-item plan-single-silver wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="0.4s">
                  <div class="icon-box">
                      <img src="dashboard/images/icons/silver-plan.png" alt="Silver Plan">
                  </div>
                  <h5 class="mb-35 mt-53">Silver Plan</h5>
                  <h3 class="mb-20">80% <span>ROI</span></h3>
                  <p>Daily for 30 Days</p>
                  <div class="d-flex align-item-center justify-content-between plan-range-details mt-25">
                      <div class="align-items-center">
                          <p class="small">Min. Invest</p>
                          <h5>$100</h5>
                      </div>
                      <div>
                          <p class="small">Max. Invest</p>
                          <h5>$500</h5>
                      </div>
                  </div>
              </div>
          </div>
          <div class="col-md-6 col-xxl-4">
              <div class="plan-single-item plan-single-gold wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="0.4s">
                  <div class="icon-box">
                      <img src="dashboard/images/icons/gold-plan.png" alt="Gold Plan">
                  </div>
                  <h5>Gold Plan</h5>
                  <h3>120% <span>ROI</span></h3>
                  <p>Daily for 30 Days</p>
                  <div class="d-flex align-item-center justify-content-between plan-range-details">
                      <div class="align-items-center">
                          <p class="small">Min. Invest</p>
                          <h5>$500</h5>
                      </div>
                      <div>
                          <p class="small">Max. Invest</p>
                          <h5>$5,000</h5>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <div class="deposit-form-wrapper text-center mt-60">
          <form action="#0" method="post" name="lalu" class="text-center">
              <div class="row neutral-bottom">
                  <div class="col-md-6">
                      <div class="single-item p-30-20 wow fadeInUp" data-wow-duration="0.4s">
                          <h5>Deposit</h5>
                          <div class="input-label-group">
                              <label for="depositAmount">Enter Amount:</label>
                              <div class="input-content">
                                  <input type="number" name="deposit_amount" id="depositAmount" required="required" placeholder="$500">
                                  <span>USD</span>
                              </div>
                          </div>
                          <img src="dashboard/images/illustrations/deposit-pig.png" alt="Deposit">
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="single-item p-30-20 wow fadeInUp" data-wow-duration="0.4s">
                          <h5>Payment System</h5>
                          <div class="input-label-group">
                              <label for="currency">Select Payment Method</label>
                              <select class="method-pick currency" id="currency">
                                  <option data-display="Bitcoin" value="Bitcoin">Bitcoin
                                  </option>
                                  <option value="lite-coin">Lite Coin</option>
                                  <option value="ethereum">Ethereum</option>
                                  <option value="xem">xem</option>
                                  <option value="doge">Doge</option>
                                  <option value="usd">USD</option>
                                  <option value="euro">Euro</option>
                              </select>
                          </div>
                          <img src="dashboard/images/illustrations/payment-system.png" alt="Deposit">
                      </div>
                  </div>
              </div>
              <a href="/?a=depositConfirmation" class="dashboard-tab primary-btn mt-60">Invest
                  Now <i class="icon-right-arrow"></i></a>
          </form>
      </div>
  </div>
</div>
{include file="footer.tpl"}

