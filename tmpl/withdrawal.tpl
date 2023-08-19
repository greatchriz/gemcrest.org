
{include file="header.tpl"}
<div class="dashboard-tab-content" id="withdraw">
  <div class="balance-area p-40 wow fadeInUp" data-wow-duration="0.4s">
      <h5>Your Balance</h5>
      <h2>$1516.00</h2>
  </div>
  <div class="deposit-form-wrapper text-center mt-60">
      <form action="#0" method="post" name="lalu" class="text-center">
          <div class="row neutral-bottom">
              <div class="col-md-6">
                  <div class="single-item p-30-20 wow fadeInUp" data-wow-duration="0.4s">
                      <h5>Payment System</h5>
                      <div class="d-flex flex-wrap align-items-center">
                          <div class="input-label-group">
                              <label for="currencyThree">Select Payment Method</label>
                              <select class="method-pick currency" id="currencyThree">
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
                          <div>
                              <p class="small">Available Amount</p>
                              <h4>$500</h4>
                          </div>
                      </div>
                      <img src="dashboard/images/illustrations/payment-system.png" alt="Deposit">
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="single-item p-30-20 wow fadeInUp" data-wow-duration="0.4s">
                      <h5>Withdraw</h5>
                      <div class="input-label-group">
                          <label for="withdrawAmount">Enter Amount:</label>
                          <div class="input-content">
                              <input type="number" name="withdraw_amount" id="withdrawAmount" required="required" placeholder="$500">
                              <span>USD</span>
                          </div>
                      </div>
                      <img src="dashboard/images/dashboard/withdraw-locker.png" alt="Withdraw">
                  </div>
              </div>
          </div>
          <button type="submit" class="primary-btn mt-60">Withdraw Funds <i class="icon-right-arrow"></i></button>
      </form>
  </div>
</div>
{include file="footer.tpl"}



