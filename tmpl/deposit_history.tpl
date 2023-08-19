{include file="header.tpl"}
<div class="dashboard-tab-content" id="transaction">
  <div class="transaction-filter">
      <div class="row d-flex align-items-end">
          <div class="col-lg-7">
              <div class="row">
                  <div class="col-sm-6">
                      <div class="date-select wow fadeInUp" data-wow-duration="0.4s">
                          <label for="transactionFrom">Date From</label>
                          <div class="img-input d-flex align-items-center">
                              <img src="dashboard/images/icons/calendar.png" alt="Date Picker">
                              <input type="text" name="transaction_from" id="transactionFrom" placeholder="Date From">
                          </div>
                      </div>
                  </div>
                  <div class="col-sm-6">
                      <div class="date-select wow fadeInUp" data-wow-duration="0.4s">
                          <label for="transactionTo">Date To</label>
                          <div class="img-input d-flex align-items-center">
                              <img src="dashboard/images/icons/calendar.png" alt="Date Picker">
                              <input type="text" name="transaction_to" id="transactionTo" placeholder="Date To">
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <div class="col-lg-5">
              <div class="date-select wow fadeInUp" data-wow-duration="0.4s">
                  <div class="input-label-group">
                      <label for="currencyTwo">Payment</label>
                      <select class="method-pick method-pick-alt currency" id="currencyTwo">
                          <option data-display="All">All</option>
                          <option value="bitcoin">Bitoin</option>
                          <option value="lite-coin">Lite Coin</option>
                          <option value="ethereum">Ethereum</option>
                          <option value="xem">xem</option>
                          <option value="doge">Doge</option>
                          <option value="usd">USD</option>
                          <option value="euro">Euro</option>
                      </select>
                  </div>
              </div>
          </div>
      </div>
      <div class="row d-flex align-items-end mtf-30">
          <div class="col-lg-9">
              <div class="input-label-group wow fadeInUp" data-wow-duration="0.4s">
                  <label for="transactionThree">Transaction</label>
                  <select class="method-pick currency" id="transactionThree">
                      <option data-display="All">All</option>
                      <option value="bitcoin">Deposit</option>
                      <option value="lite-coin">Withdraw</option>
                  </select>
              </div>
          </div>
          <div class="col-lg-3">
              <div class="date-select wow fadeInUp" data-wow-duration="0.4s">
                  <a href="#0" class="primary-btn">Filter <i class="icon-right-arrow"></i></a>
              </div>
          </div>
      </div>
  </div>
  <div class="referral-table referral-table-two wow fadeInUp" data-wow-duration="0.4s">
      <div class="table-wrapper mtf-30">
          <table class="table">
              <thead>
                  <tr>
                      <th>Date & Time</th>
                      <th class="text-center">Transaction</th>
                      <th class="text-center">Amount</th>
                      <th class="text-center">Payment Method</th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td>
                          Nov-3-2021 02:10:59 PM
                      </td>
                      <td class="text-center">Deposit</td>
                      <td class="text-center">$5000</td>
                      <td>
                          <div class="method">
                              <img src="dashboard/images/icons/perfect-money.png" alt="Perfect Money">
                          </div>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Nov-3-2021 02:10:59 PM
                      </td>
                      <td class="text-center">Deposit</td>
                      <td class="text-center">$5000</td>
                      <td>
                          <div class="method">
                              <img src="dashboard/images/icons/perfect-money.png" alt="Perfect Money">
                          </div>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Nov-3-2021 02:10:59 PM
                      </td>
                      <td class="text-center">Deposit</td>
                      <td class="text-center">$5000</td>
                      <td>
                          <div class="method">
                              <img src="dashboard/images/icons/perfect-money.png" alt="Perfect Money">
                          </div>
                      </td>
                  </tr>
              </tbody>
          </table>
      </div>
  </div>
  <div class="row d-flex align-items-center mtf-30">
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
