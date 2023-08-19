{include file="header.tpl"}


{if $fatal}

  {if $fatal == 'one_per_month'}
    You can deposit once a month only.
  {/if}

{else}

  {if $frm.say eq 'deposit_success'}
    <h3>The deposit has been successfully saved.</h3>
    <br><br>
  {/if}

  {if $frm.say eq 'deposit_saved'}
    <h3>The deposit has been saved. It will become active when the administrator checks statistics.</h3><br><br>
  {/if}

  {if $errors}
    {if $errors.less_min}
      Sorry, you can deposit not less than {$currency_sign}{$errors.less_min} with selected processing<br><br>
    {/if}
    {if $errors.greater_max}
      Sorry, you can deposit not greater than {$currency_sign}{$errors.greater_max} with selected processing<br><br>
    {/if}
    {if $errors.ec_forbidden}
      Sorry, deposit with selected processing is temproary forbidden.<br><br>
    {/if}
    {if $errors.cannot_invest_this_plan_anymore}
      Sorry, you cannot invest this plan anymore<br><br>
    {/if}
  {/if}
  <div class="dashboard-tab-content" id="deposit">


  <div class="deposit-form-wrapper text-center mt-60">

    <form
      class="text-center"
      method=post
      name="spendform"
    >
      <input
        type=hidden
        name=a
        value=deposit
      >

      <div class="deposit-range">
        <div class="row neutral-bottom">
          {section name=plans loop=$plans}



            <div class="col-md-6 col-xxl-4">
              <div
                class="plan-single-item plan-single-bronze wow fadeInUp"
                data-wow-duration="0.4s"
              >
                <div class="icon-box">
                  <img
                    src="assets/images/icons/bronze-plan.png"
                    alt="Bronze Plan"
                  >
                </div>
                {if $qplans > 1}
                  <input
                    type=radio
                    name=h_id
                    value='{$plans[plans].id}'
                    {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)}
                      checked
                    {/if}
                    onclick="updateCompound()"
                  >

                {else}
                  <input
                    type=hidden
                    name=h_id
                    value='{$plans[plans].id}'
                  >
                {/if}

                <h5 class="mb-35 mt-53">{$plans[plans].name}</h5>
                <h3 class="mb-20">{$plans[plans].percent}<span>ROI</span></h3>
                <p>{$plans[plans].description}</p>
                <div class="d-flex align-item-center justify-content-between plan-range-details mt-25">
                  <div class="align-items-center">
                    <p class="small">Min. Invest</p>
                    <h5>${$plans[plans].min_deposit}</h5>
                  </div>
                  <div>
                    <p class="small">Max. Invest</p>
                    <h5>${$plans[plans].max_deposit}</h5>
                  </div>
                </div>
              </div>
            </div>

          {/section}
        </div>

        <div class="row neutral-bottom">
          <div class="col-md-6">
            <div
              class="single-item p-30-20 wow fadeInUp"
              data-wow-duration="0.4s"
            >
              <h5>Deposit</h5>
              <div class="input-label-group">
                <label for="depositAmount">Enter Amount:</label>
                <div class="input-content">
                  <input
                    type="number"
                    name="deposit_amount"
                    id="depositAmount"
                    required="required"
                    placeholder="$500"
                  >
                  <span>USD</span>
                </div>
              </div>
              <img
                src="assets/images/illustrations/deposit-pig.png"
                alt="Deposit"
              >
            </div>
          </div>
          <div class="col-md-6">
            <div
              class="single-item p-30-20 wow fadeInUp"
              data-wow-duration="0.4s"
            >
              <h5>Payment System</h5>
              <div class="input-label-group">
                <label for="currency">Select Payment Method</label>
                <select
                  class="method-pick currency"
                  id="currency"
                >
                  <option
                    data-display="Bitcoin"
                    value="Bitcoin"
                  >Bitcoin
                  </option>
                  <option value="lite-coin">Lite Coin</option>
                  <option value="ethereum">Ethereum</option>
                  <option value="xem">xem</option>
                  <option value="doge">Doge</option>
                  <option value="usd">USD</option>
                  <option value="euro">Euro</option>
                </select>
              </div>
              <img
                src="assets/images/illustrations/payment-system.png"
                alt="Deposit"
              >
            </div>
          </div>
        </div>
        <a
          href="/?a=depositConfirmation"
          class="dashboard-tab primary-btn mt-60"
        >Invest
          Now <i class="icon-right-arrow"></i></a>
      </div>

    </form>
  </div>

</div>

{/if}
{include file="footer.tpl"}

