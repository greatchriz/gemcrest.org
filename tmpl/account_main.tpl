{include file="header.tpl"}

{loaddata name="user_notices" var=notices}

{if $notices}
    
        <div class="newsletter-wrapper wow fadeInUp mb-24" data-wow-duration="0.4s" style="visibility: visible; animation-duration: 0.4s; animation-name: fadeInUp; padding: 30px;">
            {foreach from=$notices item=n}


            <div class="newsletter-inner-area" style="max-width: 100%; margin-bottom: 10px;">
                
                
                
                <form method="post" id="subscribeForm" autocomplete="off" class="mt-24">
                    <input
                    type=hidden
                    name=a
                    value=user_notices
                 >
                 <input
                    type=hidden
                    name=action
                    value=notified
                 >
                 <input
                    type=hidden
                    name=id
                    value={$n.id}
                 >
                    <div class="input-button-group-wrapper">
                        <div class="input-button-group" style="border: 1px solid #543F30;">
<div style="padding-left: 15px; padding-top: 20px;" class="d-flex justify-self-start">
<h4 class="mb-16">Subscribe Us</h4>
</div>
                            <input type="email" name="subscribe-email" placeholder="Your Email Address" required="required" id="subscribe" value="Join 14,000+ satisfied Fast Invest customers! Register and Subscribe to our newsletter to receive all the latest news and updates.">
                        </div>
                        <button type="submit" class="icon-button"><img src="assets/images/icons/subscribe.png" alt="Subscribe"> Dismiss</button>
                    </div>
                </form>
            </div>

        {/foreach}
        </div>
   
{/if}

<div class="dashboard-tab-content">
    <div class="balance-area p-40 wow fadeInUp" data-wow-duration="0.4s">
        <h5>Your Balance</h5>
        <h2>$1516.00</h2>
        <div class="btn-group mt-60">
            <a href="/?a=deposit" class="dashboard-tab primary-btn">Make a Deposit <i class="icon-right-arrow"></i></a>
            <a href="/?a=withdraw" class="dashboard-tab primary-btn">Withdraw Funds <i class="icon-right-arrow"></i></a>
        </div>
    </div>
    <div class="balance-card mtf-30 wow fadeInUp" data-wow-duration="0.4s">
        <div class="row">
            <div class="col-md-6 col-xl-3">
                <div class="single-item p-40">
                    <h5>$5789.00</h5>
                    <p class="small">Active Deposits</p>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="single-item p-40">
                    <h5>$2500.00</h5>
                    <p class="small">Earn Total</p>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="single-item p-40">
                    <h5>$7000.00</h5>
                    <p class="small">Total Depost</p>
                </div>
            </div>
            <div class="col-md-6 col-xl-3">
                <div class="single-item p-40">
                    <h5>$7000.00</h5>
                    <p class="small">Total Withdraw</p>
                </div>
            </div>
        </div>
    </div>
    <div class="payment-balance mt-60 wow fadeInUp" data-wow-duration="0.4s">
        <h4>Payment Balance</h4>
        <div class=" icon-item-wrapper mt-40">
            <div class="item">
                <div class="icon-wrapper d-flex justify-content-center align-items-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/bitcoin.png" alt="Bitcoin">
                    </div>
                    <p class="small">Bitcoin</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
            <div class="item">
                <div class="icon-wrapper d-flex align-items-center justify-content-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/ethereum.png" alt="Ethereum">
                    </div>
                    <p class="small">Ethereum</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
            <div class="item">
                <div class="icon-wrapper d-flex justify-content-center align-items-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/neteller.png" alt="Neteller">
                    </div>
                    <p class="small">Neteller</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
            <div class="item">
                <div class="icon-wrapper d-flex justify-content-center align-items-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/paypal.png" alt="Paypal">
                    </div>
                    <p class="small">Paypal</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
            <div class="item">
                <div class="icon-wrapper d-flex justify-content-center align-items-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/perfect-money.png" alt="perfect-money">
                    </div>
                    <p class="small">Perfect Money</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
        </div>
        <div class="icon-item-wrapper">
            <div class="item">
                <div class="icon-wrapper d-flex justify-content-center align-items-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/bitcoin.png" alt="Bitcoin">
                    </div>
                    <p class="small">Bitcoin</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
            <div class="item">
                <div class="icon-wrapper d-flex align-items-center justify-content-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/ethereum.png" alt="Ethereum">
                    </div>
                    <p class="small">Ethereum</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
            <div class="item">
                <div class="icon-wrapper d-flex justify-content-center align-items-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/neteller.png" alt="Neteller">
                    </div>
                    <p class="small">Neteller</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
            <div class="item">
                <div class="icon-wrapper d-flex justify-content-center align-items-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/paypal.png" alt="Paypal">
                    </div>
                    <p class="small">Paypal</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
            <div class="item">
                <div class="icon-wrapper d-flex justify-content-center align-items-center mb-20">
                    <div class="icon">
                        <img src="dashboard/images/icons/perfect-money.png" alt="perfect-money">
                    </div>
                    <p class="small">Perfect Money</p>
                </div>
                <p class="small mb-13">Balance:</p>
                <h6 class="mb-13">$0.00</h6>
                <p class="small mb-13">On Dep:</p>
                <h6>$0.00</h6>
            </div>
        </div>
    </div>
    <div class="referral p-40-30 mt-60 wow fadeInUp" data-wow-duration="0.4s">
        <h4>Share The Referral Link</h4>
        <p>You can also share your referral link by copying and sending it or sharing it on
            your social media.</p>
        <div class="row d-flex align-items-center mt-25">
            <div class="col-md-8">
                <div class="copy-link-wrapper">
                    <input type="text" value="hyipo.com/referral=96578a32" id="copyLinkTwo" disabled="disabled">
                    <button class="primary-btn">Copy Link</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="social-bar">
                    <div class="social-box-third text-center text-md-end">
                        <a href="#">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="#" class="mr-0">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


{include file="footer.tpl"}

