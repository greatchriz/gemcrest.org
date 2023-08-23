{if $userinfo.home_phone == 1}
  {include file="modal.tpl"}
{else}

  

{include file="header.tpl"}

{if $frm.say eq 'deposit_success'}
<h3>The deposit has been successfully saved.</h3>
<br><br>
{/if}

{if $frm.say eq 'deposit_saved'}
<h3>The deposit has been saved. It will became active when the administrator checks statistics.</h3><br><br>
{/if}

<h3>Deposit to Account:</h3>
<br>
<form method=post>
<input type=hidden name=a value=deposit>
<input type=hidden name=h_id value=-1>
   <div class="rounded-lg bg-slate-150 p-4 dark:bg-navy-700">
      <div class="flex justify-between space-x-1">
          <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
            {$currency_sign}{$ab_formated.total}
          </p>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="h-5 w-5 text-primary dark:text-accent"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
            stroke-width="2"
        >
            <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
            ></path>
        </svg>
    </div>
    <p class="mt-1 text-xs+">Account Balance</p>
    {section name=p loop=$ps}
      {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}<br>{/if}
   {/section}

</div>

<h2 class="my-3 text-lg font-medium text-slate-800 dark:text-navy-50 lg:text-xl">
   Add Amount and Select Payment Method
 </h2>


 <div class="grid grid-cols-1 gap-4 sm:gap-5 lg:gap-6">
  <div class="card px-4 pb-4 sm:px-5">
    <div class="mt-5 space-y-4">
      

   <div>
     <span>How Much are you Investing ?</span>
     <label class="mt-1 flex -space-x-px">
       <div
         class="flex items-center justify-center rounded-l-lg border border-slate-300 px-3.5 font-inter dark:border-navy-450"
       >
         <span>$</span>
       </div>
       <input
         class="form-input w-full border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:z-10 hover:border-slate-400 focus:z-10 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
         placeholder="Enter Price"
         type="text"
         name=amount value='200'
       />
       <div
         class="flex items-center justify-center rounded-r-lg border border-slate-300 px-3.5 font-inter dark:border-navy-450"
       >
         <span>.00</span>
       </div>
     </label>
   </div>

   {section name=p loop=$ps}
      {if $ps[p].status}
         <div>
         <label class="inline-flex items-center space-x-2">
            <input
              class="form-radio is-basic h-5 w-5 rounded-full border-slate-400/70 checked:border-primary checked:bg-primary hover:border-primary focus:border-primary dark:border-navy-400 dark:checked:border-accent dark:checked:bg-accent dark:hover:border-accent dark:focus:border-accent"
              type="radio"
              name=type value="process_{$ps[p].id}" {if $smarty.section.p.index == 0}checked{/if}>
            <p>Pay with {$ps[p].name}</p>
          </label>

         </div>

      {/if}
   {/section}
  </div>

  </div>
   
 </div>


 <button
 type=submit
 class="btn bg-gradient-to-br from-purple-500 to-indigo-600 font-medium text-white my-4"
>
 Spend
</button>

</form>

{include file="footer.tpl"}


{/if}