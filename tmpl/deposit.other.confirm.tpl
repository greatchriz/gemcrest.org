{include file="header.tpl"}


<div class="grid grid-cols-1 gap-4 sm:gap-5 lg:grid-cols-3 lg:gap-6">

    {if $ok == 1}

        <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">
            <div>
              <h2 class="text-lg font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
                Confirm Deposit
              </h2>
            </div>
            <div class="pt-2">
                <p>{$description}</p>
            </div>
        </div>

        <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">
            <div>

            <table
                cellspacing=0
                cellpadding=2
                class="form deposit_confirm"
            >
                {if $deposit.id > 0}
                    <tr>
                        <th>Plan:</th>
                        <td>{$deposit.name|escape:html}</td>
                    </tr>
                    <tr>
                        <th>Profit:</th>
                        <td>{$deposit.percent}% {if $deposit.period == 'end' || $deposit.period == 'endh'}after
                                {$deposit.periods} {$deposit.time_units}{if $deposit.periods != 1}s{/if}{else}{$deposit.period_name}
                                for {if $deposit.periods == 0}lifelong
                                {else}{$deposit.periods}
                                    {$deposit.time_units}{if $deposit.periods != 1}s{/if}
                                    {if $deposit.work_week}(mon-fri){/if}{/if}{/if}</td>
                            </tr>
                            <tr>
                                <th>Principal Return:</th>
                                <td>{if $deposit.principal_return}Yes
                                    {if $deposit.principal_return_hold_percent > 0}, with
                                        {$deposit.principal_return_hold_percent|number_format:2}% fee{/if}
                                        {else}No (included in profit)
                                        {/if}
                                    </td>
                                </tr>
                                <tr>
                                    <th>Principal Withdraw:</th>
                                    <td>
                                        {if $deposit.principal_withdraw}Available with
                                            {foreach from=$deposit.principal_withdraw_terms item=t name=wpt}
                                                {$t.percent}% fee {if $t.duration > 0}after {$t.duration} days{/if}{if !$smarty.foreach.wpt.last} or
                                            {/if}
                                        {/foreach}
                                        {if $deposit.principal_withdraw_duration_max} but before
                                        {$deposit.principal_withdraw_duration_max|number_format} days{/if}
                                    {else}Not available
                                    {/if}
                                </td>
                            </tr>
                            {if $deposit.use_compound == 1}
                                <tr>
                                    <th>Compound:</th>
                                    <td>{$deposit.compound|number_format}%</td>
                                </tr>
                            {/if}
                        {/if} {* $deposit.id *}
                        {if $deposit.ec_fees.fee}
                            <tr>
                                <th>Credit Amount:</th>
                                <td>{$currency_sign}{$deposit.user_amount}</td>
                            </tr>
                            <tr>
                                <th>Deposit Fee:</th>
                                <td>{$deposit.ec_fees.percent}% + {$currency_sign}{$deposit.ec_fees.add_amount} (min.
                                    {$currency_sign}{$deposit.ec_fees.fee_min} max. {$currency_sign}{$deposit.ec_fees.fee_max})</td>
                            </tr>
                        {/if}
                        {if $deposit.converted_amount}
                            <tr>
                                <th>Debit Amount:</th>
                                <td>{$currency_sign}{$deposit.converted_amount}</td>
                            </tr>
                            <tr>
                                <th>{$deposit.converted_fiat} Debit Amount:</th>
                                <td>{$deposit.amount}</td>
                            </tr>
                        {else}
                            <tr>
                                <th>Debit Amount:</th>
                                <td>{$currency_sign}{$deposit.amount}</td>
                            </tr>
                        {/if}
                    </table>
            </div>
        </div>

        <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">
            <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base">
                Required Information
            </h2>
            <div>
                <form
                    name=spend
                    method=post
                >
                    <input
                        type=hidden
                        name=a
                        value=deposit
                    >
                    <input
                        type=hidden
                        name=action
                        value=confirm
                    >
                    <input
                        type=hidden
                        name=type
                        value={$type}
                    >
                    <input
                        type=hidden
                        name=h_id
                        value={$h_id}
                    >
                    <input
                        type=hidden
                        name=compound
                        value={$compound}
                    >
                    <INPUT
                        type=hidden
                        name=amount
                        value="{$famount}"
                    >
                    {if $fields}
                         

                            {section name=f loop=$fields}
                                <label class="block my-3">
                                    <span>{$fields[f].name}</span>
                                    <input
                                      class="form-input mt-1.5 w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                                      placeholder="{$fields[f].name}"
                                      type="text"
                                      name="fields[{$fields[f].id}]"
                                    />
                                  </label>
                            {/section}
                    {/if}

                    
                    <button
                        type="submit"
                        class="btn bg-gradient-to-r from-amber-400 to-orange-600 font-medium text-white"
                    >
                        Save
                    </button>

                    <button
                        type="button"
                        class="btn bg-gradient-to-r from-sky-400 to-blue-600 font-medium text-white"
                        onclick="document.location='?a=deposit'"
                    >
                        Cancel
                    </button>
                </form>
            </div>
        </div>

    {else}

        <div class="card px-5 py-12 sm:px-18 mt-5">
            <div class="flex flex-col justify-between sm:flex-row">

                {if $max_deposit_less == 1}
                    Sorry, the maximal deposit is {$max_deposit_format}.<br>
                {/if}
                {if $wrong_paln == 1} The Plan does not exist. {/if}
                {if $not_enough_funds == 1} You have not enough funds to complete the operation.<br>{/if}
                {if $less_than_min == 1}
                    The minimal spend amount for '{$plan_name}' is {$currency_sign}{$min_amount}.<br>
                {/if}
                {if $zero_amount}
                    You should enter amount grater than zero.<br>
                {/if}

                <br>
                Click <a href="?a=deposit">here</a> and try again.
            </div>
        </div>


    {/if}
</div>
{* <div class="dashboard-tab-content" id="depositConfirmation">
    <div class="deposit-confirmation wow fadeInUp" data-wow-duration="0.4s">
        <h4>Deposit Confirmation</h4>
        <div class="table-wrapper">
            <table class="mt-40">
                <thead>
                    <tr>
                        <th colspan="2" class="large">Make Payment</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Plan:</td>
                        <td>2% daily for 15 business days</td>
                    </tr>
                    <tr>
                        <td>Payouts:</td>
                        <td>2% daily for 15 business days</td>
                    </tr>
                    <tr>
                        <td>Principal Return:</td>
                        <td>2% daily for 15 business days</td>
                    </tr>
                    <tr>
                        <td>Early Principal Withdraw:</td>
                        <td>Not available</td>
                    </tr>
                    <tr>
                        <td>Deposit Fee:</td>
                        <td>0.00% + $0.00 (min. $0.00 max. $0.00)</td>
                    </tr>
                    <tr>
                        <td>Deposit Amount:</td>
                        <td>$10000.00</td>
                    </tr>
                    <tr>
                        <td>Fixed rate:</td>
                        <td>1 BTC = $40,000</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td>BTC Deposit Amount:</td>
                        <td>0.25000000</td>
                    </tr>
                </tfoot>
            </table>
        </div>
        <div class="payment-info text-center mt-40 wow fadeInUp" data-wow-duration="0.4s">
            <p class="text-center">Please send 0.25000000 BTC to
                <span>12GF4ckZS99GcDazuiSiBVWMnGajx8JzL4</span>
            </p>
            <p class="text-center">Order status: <span>Waiting for payment</span></p>
            <img src="dashboard/images/dashboard/qr-code.png" alt="QR Code">
        </div>
    </div>
    <div class="fixed-rate mt-60 wow fadeInUp" data-wow-duration="0.4s">
        <h4>FIXED Rate Explanation:</h4>
        <p>If You invest $10000 in BTC, you invest 0.25 BTC based on our fixed rate (1
            BTC = $40,000).
            Your daily profit in this case is $300.00 during 45 business days period.
            When withdrawing your daily profit you receive 0.007500 BTC to your wallet
            based on the same fixed rate.
            At the end of the term, when withdrawing your principal deposit of $10000,
            you receive your initial 0.25 BTC, not depending on the changes of the
            market rates.</p>
    </div>
    <div class="important-info mt-40 wow fadeInUp" data-wow-duration="0.4s">
        <h4>Important Information:</h4>
        <ol>
            <li>Be careful while making a deposit! The amount and the address should
                match
                the ones that are generated by the system.</li>
            <li>We do not take any fees or hidden commissions from deposits or withdrawals.
            </li>
            <li>The deposit will be created automatically after we receive 3-8
                confirmations.</li>
        </ol>
    </div>
</div> *}
{include file="footer.tpl"}
