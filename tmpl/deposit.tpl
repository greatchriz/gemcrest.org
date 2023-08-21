{include file="header.tpl"}

{literal}
    <script language="javascript">
      <!--
        function openCalculator(id) {

          w = 225;
          h = 400;
          t = (screen.height - h - 30) / 2;
          l = (screen.width - w - 30) / 2;
          window.open('?a=calendar&type=' + id, 'calculator' + id, "top=" + t + ",left=" + l + ",width=" + w + ",height=" +
            h + ",resizable=1,scrollbars=0");

        {/literal}

        
      {if $qplans > 1}

          
        {literal}
            for (i = 0; i < document.spendform.h_id.length; i++) {
              if (document.spendform.h_id[i].value == id) {
                document.spendform.h_id[i].checked = true;
              }
            }

            
        {/literal}

          
      {/if}

        
      {literal}

        }

        function updateCompound() {
          var id = 0;
          var tt = document.spendform.h_id.type;
          if (tt && tt.toLowerCase() == 'hidden') {
            id = document.spendform.h_id.value;
          } else {
            for (i = 0; i < document.spendform.h_id.length; i++) {
              if (document.spendform.h_id[i].checked) {
                id = document.spendform.h_id[i].value;
              }
            }
          }

          var cpObj = document.getElementById('compound_percents');
          if (cpObj) {
            while (cpObj.options.length != 0) {
              cpObj.options[0] = null;
            }
          }

          if (cps[id] && cps[id].length > 0) {
            document.getElementById('coumpond_block').style.display = '';

            for (i in cps[id]) {
              cpObj.options[cpObj.options.length] = new Option(cps[id][i]);
            }
          } else {
            document.getElementById('coumpond_block').style.display = 'none';
          }
        }
        var cps = {};
        -->
      </script>
    {/literal}

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


<div class="dashboard-tab-content">
  <div class="deposit-range">
    <form
      method=post
      name="spendform"
      class="text-center"
    >
      <input
        type=hidden
        name=a
        value=deposit
      >

        <div class="row neutral-bottom">
            {section name=plans loop=$plans}
                {include file="a_plan.tpl" plans=$plans}
              {/section}
{*               
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
            </div> *}
        </div>
        <div class="deposit-form-wrapper text-center mt-60">
                <div class="row neutral-bottom">
                    <div class="col-md-6">
                        <div class="single-item p-30-20 wow fadeInUp" data-wow-duration="0.4s">
                            <h5>Deposit</h5>
                            <div class="input-label-group">
                                <label for="depositAmount">Enter Amount:</label>
                                <div class="input-content">
                                    <input type="text"
                                    name=amount
                                    value='{$min_deposit}' id="depositAmount" required="required" placeholder="$500">
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
                                <select class="method-pick currency" id="currency" name="type">

                                    <optgroup label="Spend funds from the Account Balance">
                                    {section name=p loop=$ps}
                                        {if $ps[p].balance > 0 and $ps[p].status == 1}
                                            <option
                                                data-display="{$ps[p].name}"
                                                value="account_{$ps[p].id}"
                                            >{$ps[p].name}
                                            </option>
                                        {/if}
                                    {/section}
                                </optgroup>
                                <optgroup label="Spend funds from External Wallet">
                                    <hr>
                                    {section name=p loop=$ps}
                                        {if $ps[p].status}
                                            <option value="process_{$ps[p].id}">{$ps[p].name}</option>
                                        {/if}
                                    {/section}
                                </optgroup>

                                </select>
                            </div>
                            <img src="dashboard/images/illustrations/payment-system.png" alt="Deposit">
                        </div>
                    </div>
                </div>
                <button type="submit" class="dashboard-tab primary-btn mt-60">Spend <i class="icon-right-arrow"></i></button>
        </div>

    </form>
  </div>
</div>



{literal}
<script language=javascript>
  for (i = 0; i < document.spendform.type.length; i++) {
    if ((document.spendform.type[i].value.match(/^process_/))) {
      document.spendform.type[i].checked = true;
      break;
    }
  }
  updateCompound();
</script>
{/literal}
{include file="footer.tpl"}

