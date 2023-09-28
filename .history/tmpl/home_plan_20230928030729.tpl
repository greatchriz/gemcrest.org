{* 
    <div class="pt-2 mt-2">
        {section name=options loop=$plans[plans].plans}
            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">Rate </p>
                <p>{$plans[plans].plans[options].name}</p>
            </div>

            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">Minimum -Maximum Inv. Amount</p>
                <p>{$plans[plans].plans[options].deposit}</p>
            </div>

            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">R.O.I.</p>
                <p>{$plans[plans].plans[options].percent}%</p>
            </div>
            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">Duration</p>
                <p>{$plans[plans].plans[options].description}</p>
            </div>

            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">Referral Bonus</p>
                <p>10% on First Deposit</p>
            </div>

        {/section}
    </div> *}


    <div class="col-xl-3 col-lg-4 col-md-6 mb-30">
        <div class="package-card text-center bg_img" data-background="assets/images/bg/bg-4.png">
          <h4 class="package-card__title base--color mb-2">Slivesto</h4>
          <ul class="package-card__features mt-4">
            <li>Return 6%</li>
            <li>Every Week</li>
            <li>For 5 Week</li>
            <li>Total 30% + <span class="badge base--bg text-dark">Capital</span></li>
          </ul>
          <div class="package-card__range mt-5 base--color">$200</div>
          <a href="#0" class="cmn-btn btn-md mt-4">Invest Now</a>
        </div><!-- package-card end -->
      </div>