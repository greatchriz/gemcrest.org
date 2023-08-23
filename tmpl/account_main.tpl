{include file="header.tpl"}

{loaddata name="user_notices" var=notices}

{if $notices}
<ul style="color:red">
{foreach from=$notices item=n}
<li><b>{$n.title}</b> {$n.text|nl2br}
<form method=post>
<input type=hidden name=a value=user_notices>
<input type=hidden name=action value=notified>
<input type=hidden name=id value={$n.id}>
<input type=submit value="Dismiss">
</form>
{/foreach}
</ul>
{/if}

<h3>Your account:</h3><br>

{if $settings.use_transaction_code ==1 && $userinfo.transaction_code == ''} <b>Note: currently you have not specified 
a Transaction code. The Transaction code strengthens your funds security in our 
system. The code is required to withdraw funds from your account{if $settings.internal_transfer_enabled} 
and for internal transfer to another user account{/if}. Just do not change 'Transaction 
code' in your account information if you do not want to use this feature. <a href=?a=edit_account>Click 
here</a> to specify a new transaction code .</b> <br>
<br>
{/if}

{if $userinfo.tfa_not_enabled} 
<b>Security Note: please, activate <a href="{"?a=security"|encurl}">Two Factor Authentication</a> to keep your account safe.</b>
{/if}

{* <table cellspacing=0 cellpadding=2 border=0>
<tr>
 <td>User:</td>
 <td>{$userinfo.username}</td>
</tr><tr>
 <td>Registration Date:</td>
 <td>{$userinfo.create_account_date}</td>
</tr><tr>
 <td>Last Access:</td>
 <td>{$last_access|default:"n/a"}&nbsp;</td>
</tr><tr>
 <td>&nbsp;</td>
</tr><tr>
 <td valign=top>Account Balance:</td>
 <td>{$currency_sign}<b>{$ab_formated.total}</b><br>
 <small>
{foreach from=$ps item=p}
   {if $p.balance > 0}{$currency_sign}{$p.balance} of {$p.name}<br>{/if}
{/foreach}
</tr><tr>
 <td>Earned Total:</td>
 <td>{$currency_sign}<b>{$ab_formated.earning}</b></td>
</tr><tr>
 <td>Pending Withdrawal:</td>
 <td>{$currency_sign}<b>{$ab_formated.withdraw_pending}</b></td>
</tr><tr>
 <td>Withdrew Total:</td>
 <td>{$currency_sign}<b>{$ab_formated.withdrawal}</b></td>
</tr><tr>
 <td>Active Deposit:</td>
 <td>{$currency_sign}<b>{$ab_formated.active_deposit}</b></td>
</tr><tr>
 <td>&nbsp;</td>
</tr>
{if $last_deposit}
<tr>
 <td>Last Deposit:</td>
 <td>{$currency_sign}<b>{$last_deposit|default:"n/a"}</b> &nbsp; <small>{$last_deposit_date|default:"n/a"}</small></td>
</tr>
{/if}
{if $ab_formated.deposit != 0}
<tr>
 <td>Total Deposit:</td>
 <td>{$currency_sign}<b>{$ab_formated.deposit}</b></td>
</tr>
{/if}
{if $last_withdrawal}
<tr>
 <td>Last Withdrawal:</td>
 <td>{$currency_sign}<b>{$last_withdrawal|default:"n/a"}</b> &nbsp; <small>{$last_withdrawal_date|default:"n/a"}</small></td>
</tr>
{/if}
{if $ab_formated.withdrawal > 0}
<tr>
    <td>Withdrew Total:</td>
 <td>{$currency_sign}<b>{$ab_formated.withdrawal}</b></td>
</tr>
{/if}
<tr>
 <td>&nbsp;</td>
</tr></table> *}

<section class="subpage_wrap subpage_account about-sub">
   <div class="container">
     <div class="member-content">
       <div class="row">
         <div class="col-lg-3 col-sm-12">
           <div class="member-menu">
             <nav
               class="navbar navbar-expand-lg pb-0 justify-content-center">
               <button
                 class="navbar-toggler mx-auto mb-3"
                 type="button"
                 data-bs-toggle="collapse"
                 data-bs-target="#navbarSupportedContent1"
                 aria-controls="navbarSupportedContent"
                 aria-expanded="false"
                 aria-label="Toggle navigation">
                 <i class="bi bi-filter-right"></i>
               </button>
               <div
                 class="collapse navbar-collapse"
                 id="navbarSupportedContent1">
                 <ul class="nav-menu">
                   <li class="hvr-bob">
                     <a href="/?a=account"
                       ><div class="inner">
                         <i class="bi bi-person-circle"></i> Account
                       </div></a
                     >
                   </li>
                   <li class="hvr-bob">
                     <a href="/?a=deposit"
                       ><div class="inner">
                         <i class="bi bi-bank2"></i> Deposit
                       </div></a
                     >
                   </li>

                   <li class="hvr-bob">
                     <a href="/?a=deposit_list"
                       ><div class="inner">
                         <i class="bi bi-bar-chart-line-fill"></i> Active
                         Deposits
                       </div></a
                     >
                   </li>
                   <li class="hvr-bob">
                     <a href="/?a=withdraw"
                       ><div class="inner">
                         <i class="bi bi-cash-stack"></i> Withdraw
                       </div>
                     </a>
                   </li>
                   <li class="hvr-bob">
                     <a href="/?a=history&type=earning"
                       ><div class="inner">
                         <i class="bi bi-hourglass-bottom"></i> History
                       </div></a
                     >
                   </li>
                   <li class="hvr-bob">
                     <a href="/?a=referals"
                       ><div class="inner">
                         <i class="bi bi-people-fill"></i> Referrals
                       </div></a
                     >
                   </li>
                   <li class="hvr-bob">
                     <a href="/?a=referallinks"
                       ><div class="inner">
                         <i class="bi bi-badge-ad-fill"></i> Promo
                       </div></a
                     >
                   </li>
                   <li class="hvr-bob">
                     <a href="/?a=security"
                       ><div class="inner">
                         <i class="bi bi-shield-lock-fill"></i> Security
                       </div></a
                     >
                   </li>
                   <li class="hvr-bob">
                     <a href="/?a=edit_account"
                       ><div class="inner">
                         <i class="bi bi-gear-fill"></i> Settings
                       </div></a
                     >
                   </li>
                   <li class="hvr-bob">
                     <a href="/?a=logout"
                       ><div class="inner">
                         <i class="bi bi-door-closed-fill"></i> Logout
                       </div></a
                     >
                   </li>
                 </ul>
               </div>
             </nav>
           </div>
         </div>

         <div class="col-lg-9 col-sm-12">
           <div class="accoount-top">
             <div class="row">
               <div class="col-lg-12">
                 <div class="breadcrumbs">
                   <a href="/?a=account">Dashboard</a>
                 </div>
               </div>
             </div>
           </div>

           <div class="row">
             <div class="col-lg-6 col-sm-12">
               <div
                 class="account-block2 mb-3 d-flex justify-content-between">
                 <div class="block-info">
                   <p><span>$0</span> Account Balance</p>
                   <a href="/?a=withdraw" class="btn btn-primary"
                     >Withdraw Funds</a
                   >
                 </div>
                 <figure class="mb-0">
                   <img src="assets/images/step3.png" />
                 </figure>
               </div>
             </div>

             <div class="col-lg-6 col-sm-12">
               <div
                 class="account-block2 mb-3 d-flex justify-content-between">
                 <div class="block-info">
                   <p><span>$0.00</span> Active Deposit</p>
                   <a href="/?a=deposit" class="btn btn-primary"
                     >Make a Deposit</a
                   >
                 </div>
                 <figure class="mb-0">
                   <img src="assets/images/step2.png" />
                 </figure>
               </div>
             </div>
           </div>

           <div class="accoount-top">
             <div class="row">
               <div class="col-lg-4">
                 <p>Registration Date <span>Aug-23-2023</span></p>
               </div>

               <div class="col-lg-4">
                 <p>Last Access <span>Aug-23-2023 12:42:50 AM</span></p>
               </div>

               <div class="col-lg-4">
                 <p>Your E-mail <span>great.chriz@gmail.com</span></p>
               </div>
             </div>
           </div>

           <div class="row">
             <div class="col-lg-12 col-sm-12">
               <div class="middle-account">
                 <div class="row">
                   <div class="col-lg-4 col-sm-12">
                     <div class="account-block3">
                       <div
                         class="block-info d-flex justify-content-between">
                         <p>Earned Total <span>$0.00</span></p>
                         <figure>
                           <img src="assets/images/acc1.png" />
                         </figure>
                       </div>
                     </div>
                   </div>
                   <div class="col-lg-4 col-sm-12">
                     <div class="account-block3">
                       <div
                         class="block-info d-flex justify-content-between">
                         <p>Total Deposit <span>$100</span></p>
                         <figure>
                           <img src="assets/images/acc2.png" />
                         </figure>
                       </div>
                     </div>
                   </div>
                   <div class="col-lg-4 col-sm-12">
                     <div class="account-block3">
                       <div
                         class="block-info d-flex justify-content-between">
                         <p>Withdrew Total <span>$100</span></p>
                         <figure>
                           <img src="assets/images/acc3.png" />
                         </figure>
                       </div>
                     </div>
                   </div>

                   <div class="col-lg-4 col-sm-12">
                     <div class="account-block3">
                       <div
                         class="block-info d-flex justify-content-between">
                         <p>Pending Withdrawal <span>$100</span></p>
                         <figure>
                           <img src="assets/images/acc4.png" />
                         </figure>
                       </div>
                     </div>
                   </div>
                   <div class="col-lg-4 col-sm-12">
                     <div class="account-block3">
                       <div
                         class="block-info d-flex justify-content-between">
                         <p>Last Deposit<span>$100</span></p>
                         <figure>
                           <img src="assets/images/acc5.png" />
                         </figure>
                       </div>
                     </div>
                   </div>
                   <div class="col-lg-4 col-sm-12">
                     <div class="account-block3">
                       <div
                         class="block-info d-flex justify-content-between">
                         <p>Last Withdrawal <span>$100</span></p>
                         <figure>
                           <img src="assets/images/acc6.png" />
                         </figure>
                       </div>
                     </div>
                   </div>
                 </div>
               </div>
             </div>
           </div>

           <div class="row">
             <div class="col-lg-12 col-sm-12">
               <div class="breadcrumbs">Refer New Members</div>

               <div class="referral-block d-flex mb-3">
                 <div class="input-group">
                   <span class="input-group-text"
                     ><i class="bi bi-link"></i
                   ></span>
                   <input
                     type="text"
                     id="copyTarget"
                     class="form-control"
                     value="" />
                   <button
                     class="btn btn-primary"
                     type="button"
                     id="copyButton">
                     Copy Link
                   </button>
                 </div>
                 <a
                   href="index-21.htm?a=referallinks"
                   class="btn btn-warning ms-2"
                   style="margin-left: 5px"
                   >Banners</a
                 >
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>

{section name=p loop=$ps}
  {if $ps[p].pending_col > 0}{$ps[p].pending_col} {$ps[p].name} deposit{if $ps[p].pending_col > 1}s{/if} of {$currency_sign}{$ps[p].pending_amount} total pending<br>{/if}
{/section}

<br><br>


{include file="footer.tpl"}