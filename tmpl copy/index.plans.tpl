
<div class="col-md-6 col-lg-4">
  <div class="pricing card text-center">
      <div class="card-body">
          <img
              src="assets/img/icons/lineal/shopping-basket.svg"
              class="svg-inject icon-svg icon-svg-md text-primary mb-3"
              alt=""
          />
          <h4 class="card-title">{$p.name|escape:html}</h4>
          <div class="prices text-dark">
              <div class="price price-show"><span class="price-currency">$</span><span class="price-value">9</span>
                  <span class="price-duration">mo</span>
              </div>
              <div class="price price-hide price-hidden"><span class="price-currency">$</span><span
                      class="price-value"
                  >99</span> <span class="price-duration">yr</span></div>
          </div>
          <!--/.prices -->
          {foreach from=$p.plans item=o}

          <ul class="icon-list bullet-bg bullet-soft-primary mt-7 mb-8 text-start">
              <li><i class="uil uil-check"></i><span><strong>1</strong> {$o.name|escape:html} </span></li>
              <li><i class="uil uil-check"></i><span><strong>100K</strong> {$o.deposit} </span></li>
              <li><i class="uil uil-check"></i><span><strong>100MB</strong> {$o.percent|string_format:"%.2f"} </span></li>
              <li><i class="uil uil-times bullet-soft-red"></i><span> Weekly <strong>Reports</strong> </span></li>
              <li><i class="uil uil-times bullet-soft-red"></i><span> 7/24 <strong>Support</strong></span></li>
          </ul>

          <a
              href="#"
              class="btn btn-primary rounded-pill"
          >Choose Plan</a>
      {/foreach}

      </div>
      <!--/.card-body -->
  </div>
  <!--/.pricing -->
</div>

    {if $userinfo.logged}
      <br>
      <form method=post>
        <input
          type=hidden
          name=a
          value=deposit
        >
        <input
          type=submit
          value="Make deposit"
          class=sbmt
        >
        <input
          type=hidden
          name=h_id
          value={$p.id}
        >
      </form>
      <br><br>
    {/if}
 
