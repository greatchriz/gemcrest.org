<div class="col-md-6 col-xxl-4">
    <div
      class="plan-single-item plan-single-bronze wow fadeInUp"
      data-wow-duration="0.4s">
      <div class="icon-box">
        <img src="dashboard/images/icons/bronze-plan.png" alt="Bronze Plan" />
      </div>
     
  
        <div class="form-check">
          <input class="form-check-input position-static" type="radio" name="h_id" id="exampleRadios1" value='{$plans[plans].id}'
          {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)} checked {/if}
       >
        </div>
  
  
      <h5 class="mb-35 mt-53">{$plans[plans].name}</h5>
  
      {section name=options loop=$plans[plans].plans}
  
      <h3 class="mb-20">{$plans[plans].plans[options].name} <span>ROI</span></h3>
      <p>Daily for 30 Days</p>
      <div
        class="d-flex align-item-center justify-content-between plan-range-details mt-25">
        <div class="align-items-center">
          <p class="small">Min. Invest</p>
          <h5>{$plans[plans].min_deposit}</h5>
        </div>
        <div>
          <p class="small">Max. Invest</p>
          <h5>{$plans[plans].max_deposit}</h5>
        </div>
      </div>
  
      {/section}
  
    </div>
  </div>


