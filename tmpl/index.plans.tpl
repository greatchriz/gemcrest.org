{foreach from=$index_plans item=p}
  {if !$p.closed}
    <div class="col-lg-4 col-md-6 md-mb-30 md-mb-0 sm-mb-30">
      <div class="pricing-table white-bg">
        <div class="pricing-table-header">
          <h3 class="table-title">{$p.name|escape:html}</h3>
        </div>
        <div class="pricing-icon mb-40">
          <img
            src="assets/images/pricing/style1/2.png"
            alt=""
          >
        </div>

        {if $p.plans}
          {foreach from=$p.plans item=o}
            <div class="pricing-table-price">
              <div class="pricing-table-bags">
                <span class="pricing-currency">%</span>
                <span class="table-price-text">{$o.percent|string_format:"%.2f"}</span>
                <span class="table-period">/ Daily</span>
              </div>
            </div>
            <div class="pricing-table-body">
              <ul>
                <li><i class="fa fa-check"></i><span><b>Duration: </b>&nbsp; &nbsp; &nbsp; {$p.q_days|escape:html} Days</span></li>
                <li><i class="fa fa-check"></i><span><b>Minimum Deposit:</b>&nbsp; &nbsp; &nbsp; ${$o.min_deposit}</span></li>
                <li><i class="fa fa-check"></i><span><b>Maximum Deposit: </b>&nbsp; &nbsp; &nbsp; ${$o.max_deposit}</span></li>
                <li><i class="fa fa-check"></i><span><b>Referral Bonus: </b>&nbsp; &nbsp; &nbsp;  10%</span></li>
              </ul>
            </div>
          {/foreach}

        {/if}
        {if $userinfo.logged}
          <form method=post>
            <input
              type=hidden
              name=a
              value=deposit
            >
            <div class="btn-part">
              <input
                type=submit
                value="Make deposit"
                class="readon price price2"
              >
            </div>
            <input
              type=hidden
              name=h_id
              value={$p.id}
            >
          </form>

        {else}
          <div class="btn-part">
            <a
              class="readon price price2"
              href="/?a=login"
            >Get Started</a>
          </div>
        {/if}

      </div>
    </div>
  {/if}
{/foreach}
