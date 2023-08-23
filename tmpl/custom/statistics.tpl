{include file="main_header.tpl"}
{include file="inner-hero.tpl" title="Our statistics" title2="statistics" bg="bg-1.jpg"}

<!-- data section start -->
<section class="pt-120 pb-120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 text-center">
                <div class="section-header">
                    <h2 class="section-title"><span class="font-weight-normal">Our Latest</span> <b
                            class="base--color">Transaction</b></h2>
                    <p>Here is the log of the most recent transactions including withdraw and deposit made by our users.
                    </p>
                </div>
            </div>
        </div><!-- row end -->
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <ul
                    class="nav nav-tabs custom--style-two justify-content-center"
                    id="transactionTab"
                    role="tablist"
                >
                    <li
                        class="nav-item"
                        role="presentation"
                    >
                        <a
                            class="nav-link active"
                            id="deposit-tab"
                            data-toggle="tab"
                            href="#deposit"
                            role="tab"
                            aria-controls="deposit"
                            aria-selected="true"
                        >Latest Deposit</a>
                    </li>
                    <li
                        class="nav-item"
                        role="presentation"
                    >
                        <a
                            class="nav-link"
                            id="withdraw-tab"
                            data-toggle="tab"
                            href="#withdraw"
                            role="tab"
                            aria-controls="withdraw"
                            aria-selected="false"
                        >Latest Withdraw</a>
                    </li>
                </ul>

                <div
                    class="tab-content mt-4"
                    id="transactionTabContent"
                >
                    <div
                        class="tab-pane fade show active"
                        id="deposit"
                        role="tabpanel"
                        aria-labelledby="deposit-tab"
                    >
                        <div class="table-responsive--sm">
                            <table class="table style--two">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Date</th>
                                        <th>Amount</th>
                                        <th>Gateway</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/1.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>fahaddevs</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Nov 22, 2020</td>
                                        <td data-label="Amount">$ 5000</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/2.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Jon Tulsa</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 11, 2020</td>
                                        <td data-label="Amount">$ 1000</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/3.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Thomas Okeyson</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 12, 2020</td>
                                        <td data-label="Amount">$ 10000</td>
                                        <td data-label="Gateway">Stripe Storefront</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/6.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Thomas Okeyson</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 12, 2020</td>
                                        <td data-label="Amount">$ 6500</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/7.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Thomas Okeyson</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 12, 2020</td>
                                        <td data-label="Amount">$ 6500</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/8.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Thomas Okeyson</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 12, 2020</td>
                                        <td data-label="Amount">$ 6500</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div
                        class="tab-pane fade"
                        id="withdraw"
                        role="tabpanel"
                        aria-labelledby="withdraw-tab"
                    >
                        <div class="table-responsive--md">
                            <table class="table style--two">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Date</th>
                                        <th>Amount</th>
                                        <th>Gateway</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/1.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>fahaddevs</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Nov 22, 2020</td>
                                        <td data-label="Amount">$ 5000</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/2.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Jon Tulsa</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 11, 2020</td>
                                        <td data-label="Amount">$ 1000</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/3.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Thomas Okeyson</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 12, 2020</td>
                                        <td data-label="Amount">$ 10000</td>
                                        <td data-label="Gateway">Stripe Storefront</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/6.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Thomas Okeyson</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 12, 2020</td>
                                        <td data-label="Amount">$ 6500</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/7.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Thomas Okeyson</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 12, 2020</td>
                                        <td data-label="Amount">$ 6500</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                    <tr>
                                        <td data-label="Name">
                                            <div class="user">
                                                <div class="thumb"><img
                                                        src="assets/images/investor/8.jpg"
                                                        alt="image"
                                                    ></div>
                                                <span>Thomas Okeyson</span>
                                            </div>
                                        </td>
                                        <td data-label="Date">Dec 12, 2020</td>
                                        <td data-label="Amount">$ 6500</td>
                                        <td data-label="Gateway">Stripe Hosted</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div><!-- tab-content end -->
            </div>
        </div>
    </div>
</section>
<!-- data section end -->

<!-- top investor section start -->
<section class="pt-120 pb-120 border-top-1">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-lg-8 text-center">
                <div class="section-header">
                    <h2 class="section-title"><span class="font-weight-normal">Our Top</span> <b
                            class="base--color">Investor</b></h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptatum eaque earum quos quia?
                        Id aspernatur ratione, voluptas nulla rerum laudantium neque ipsam eaque</p>
                </div>
            </div>
        </div><!-- row end -->
        <div class="row justify-content-center mb-none-30">
            <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
                <div class="investor-card border-radius--5">
                    <div
                        class="investor-card__thumb bg_img background-position-y-top"
                        data-background="assets/images/investor/1.jpg"
                    ></div>
                    <div class="investor-card__content">
                        <h6 class="name">Fahad Bin Faiz</h6>
                        <span class="amount f-size-14">Investment - $1,500,355</span>
                    </div>
                </div><!-- investor-card end -->
            </div>
            <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
                <div class="investor-card border-radius--5">
                    <div
                        class="investor-card__thumb bg_img background-position-y-top"
                        data-background="assets/images/investor/2.jpg"
                    ></div>
                    <div class="investor-card__content">
                        <h6 class="name">Danial K</h6>
                        <span class="amount f-size-14">Investment - $1,500,355</span>
                    </div>
                </div><!-- investor-card end -->
            </div>
            <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
                <div class="investor-card border-radius--5">
                    <div
                        class="investor-card__thumb bg_img background-position-y-top"
                        data-background="assets/images/investor/3.jpg"
                    ></div>
                    <div class="investor-card__content">
                        <h6 class="name">Lew Son</h6>
                        <span class="amount f-size-14">Investment - $1,500,355</span>
                    </div>
                </div><!-- investor-card end -->
            </div>
            <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
                <div class="investor-card border-radius--5">
                    <div
                        class="investor-card__thumb bg_img background-position-y-top"
                        data-background="assets/images/investor/4.jpg"
                    ></div>
                    <div class="investor-card__content">
                        <h6 class="name">Tend z Joe</h6>
                        <span class="amount f-size-14">Investment - $1,500,355</span>
                    </div>
                </div><!-- investor-card end -->
            </div>
            <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
                <div class="investor-card border-radius--5">
                    <div
                        class="investor-card__thumb bg_img background-position-y-top"
                        data-background="assets/images/investor/5.jpg"
                    ></div>
                    <div class="investor-card__content">
                        <h6 class="name">Sam Joe</h6>
                        <span class="amount f-size-14">Investment - $1,500,355</span>
                    </div>
                </div><!-- investor-card end -->
            </div>
            <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
                <div class="investor-card border-radius--5">
                    <div
                        class="investor-card__thumb bg_img background-position-y-top"
                        data-background="assets/images/investor/6.jpg"
                    ></div>
                    <div class="investor-card__content">
                        <h6 class="name">Alex Joe</h6>
                        <span class="amount f-size-14">Investment - $1,500,355</span>
                    </div>
                </div><!-- investor-card end -->
            </div>
            <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
                <div class="investor-card border-radius--5">
                    <div
                        class="investor-card__thumb bg_img background-position-y-top"
                        data-background="assets/images/investor/7.jpg"
                    ></div>
                    <div class="investor-card__content">
                        <h6 class="name">Juna Sun</h6>
                        <span class="amount f-size-14">Investment - $1,500,355</span>
                    </div>
                </div><!-- investor-card end -->
            </div>
            <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
                <div class="investor-card border-radius--5">
                    <div
                        class="investor-card__thumb bg_img background-position-y-top"
                        data-background="assets/images/investor/8.jpg"
                    ></div>
                    <div class="investor-card__content">
                        <h6 class="name">Profed Laun</h6>
                        <span class="amount f-size-14">Investment - $1,500,355</span>
                    </div>
                </div><!-- investor-card end -->
            </div>
        </div>
    </div>
</section>
<!-- top investor section end -->


{include file="main_footer.tpl"}
