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

          <h4 class="package-card__title base--color mb-2">
            {$plans[plans].name}
        </h4>
        {section name=options loop=$plans[plans].plans}

          <ul class="package-card__features mt-4">
                      
            <li>{$plans[plans].plans[options].description} Days
                <span class="badge base--bg text-dark">Duration</span></li>
            <li>{$plans[plans].plans[options].percent}%
                <span class="badge base--bg text-dark">R.O.I</span></li>
            <li>${$plans[plans].plans[options].min_deposit} <span class="badge base--bg text-dark">Minimum</span></li>
            <li>${$plans[plans].plans[options].max_deposit} <span class="badge base--bg text-dark">Maximum</span></li>
          </ul>
          <a href="/?a=deposit" class="cmn-btn btn-md mt-4">Invest Now</a>
        
        {/section}
        </div><!-- package-card end -->
      </div>