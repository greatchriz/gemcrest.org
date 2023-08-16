

<!DOCTYPE html>
  <html lang="zxx" class="js">
    <head>
      <meta charset="utf-8" />
      <meta name="author" content="Softnio" />
      <meta
        name="viewport"
        content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <meta
        name="description"
        content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers." />
      <link rel="shortcut icon" href="dashlite/images/favicon.png" />
      <title>Investment Dashboard | DashLite Admin Template</title>
      <link rel="stylesheet" href="dashlite/assets/css/dashlite.css?ver=3.2.1" />
      <link
        id="skin-default"
        rel="stylesheet"
        href="dashlite/assets/css/theme.css?ver=3.2.1" />
      <script async="" src="../../gtag/js?id=UA-91615293-4"></script>
      <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
          dataLayer.push(arguments);
        }
        gtag("js", new Date());
        gtag("config", "UA-91615293-4");
      </script>
    </head>
    <body class="nk-body npc-invest bg-lighter">
      <div class="nk-app-root">
        <div class="nk-wrap">
          <div
            class="nk-header nk-header-fluid nk-header-fixed is-theme nk-header-fixed">
            <div class="container-xl wide-lg">
              <div class="nk-header-wrap">
                <div class="nk-menu-trigger me-sm-2 d-lg-none">
                  <a
                    href="#"
                    class="nk-nav-toggle nk-quick-nav-icon"
                    data-target="headerNav"
                    ><em class="icon ni ni-menu"></em
                  ></a>
                </div>
                <div class="nk-header-brand">
                  <a href="../index.html" class="logo-link"
                    ><img
                      class="logo-light logo-img"
                      src="dashlite/images/logo.png"
                      srcset="dashlite/images/logo2x.png 2x"
                      alt="logo" /><img
                      class="logo-dark logo-img"
                      src="dashlite/images/logo-dark.png"
                      srcset="dashlite/images/logo-dark2x.png 2x"
                      alt="logo-dark" /><span class="nio-version">Invest</span></a
                  >
                </div>
                <div class="nk-header-menu" data-content="headerNav">
                  <div class="nk-header-mobile">
                    <div class="nk-header-brand">
                      <a href="../index.html" class="logo-link"
                        ><img
                          class="logo-light logo-img"
                          src="dashlite/images/logo.png"
                          srcset="dashlite/images/logo2x.png 2x"
                          alt="logo" /><img
                          class="logo-dark logo-img"
                          src="dashlite/images/logo-dark.png"
                          srcset="dashlite/images/logo-dark2x.png 2x"
                          alt="logo-dark" /><span class="nio-version"
                          >Invest</span
                        ></a
                      >
                    </div>
                    <div class="nk-menu-trigger me-n2">
                      <a
                        href="#"
                        class="nk-nav-toggle nk-quick-nav-icon"
                        data-target="headerNav"
                        ><em class="icon ni ni-arrow-left"></em
                      ></a>
                    </div>
                  </div>
                  <ul class="nk-menu nk-menu-main">


                    <li class="nk-menu-item">
                      {include file="nav-item.tpl" link="/?a=account" title="Dashboard"}
                    </li>

                    <li class="nk-menu-item active has-sub">
                      <a href="#" class="nk-menu-link nk-menu-toggle"
                        ><span class="nk-menu-text">Deposit</span></a
                      >
                      <ul class="nk-menu-sub">
                        <li class="nk-menu-item">
                          <a href="/?a=deposit" class="nk-menu-link"
                            ><span class="nk-menu-text">Deposit</span></a
                          >
                        </li>
                        {if $settings.use_add_funds}
                        <li class="nk-menu-item">
                          <a href="/?a=add_funds" class="nk-menu-link"
                            ><span class="nk-menu-text"
                              >Deposit to Account</span
                            ></a
                          >
                        </li>
                        {/if}
                        <li class="nk-menu-item">
                          <a href="/?a=deposit_list" class="nk-menu-link"
                            ><span class="nk-menu-text"
                              >Deposit List</span
                            ></a
                          >
                        </li>

                        <li class="nk-menu-item">
                          <a href="/?a=deposit_history" class="nk-menu-link"
                            ><span class="nk-menu-text"
                              >Deposit History</span
                            ></a
                          >
                        </li>


          
                      </ul>
                    </li>


                    <li class="nk-menu-item active has-sub">
                      <a href="#" class="nk-menu-link nk-menu-toggle"
                        ><span class="nk-menu-text">Widthdrawl</span></a
                      >
                      <ul class="nk-menu-sub">
                        <li class="nk-menu-item">
                          <a href="/?a=withdraw" class="nk-menu-link"
                            ><span class="nk-menu-text">Withdraw</span></a
                          >
                        </li>
              
                        <li class="nk-menu-item">
                          <a href="/?a=withdraw_history" class="nk-menu-link"
                            ><span class="nk-menu-text"
                              >Withdrawals History</span
                            ></a
                          >
                        </li>
          
                      </ul>
                    </li>

                    {if $settings.use_referal_program == 1}

                    <li class="nk-menu-item active has-sub">
                      <a href="#" class="nk-menu-link nk-menu-toggle"
                        ><span class="nk-menu-text">Referrals</span></a
                      >
                      <ul class="nk-menu-sub">
                        <li class="nk-menu-item">
                          {include file="nav-item.tpl" link="/?a=referals" title="Your Referrals"}
                        </li>
              
                        <li class="nk-menu-item">
                          {include file="nav-item.tpl" link="/?a=referallinks" title="Referrals Links"}
                        </li>

                        <li class="nk-menu-item">
                          {include file="nav-item.tpl" link="/?a=history&type=commissions" title="Referrals History"}
                        </li>
          
                      </ul>
                    </li>

                    {/if}

                    <li class="nk-menu-item">
                      {include file="nav-item.tpl" link="/?a=history&type=earning" title="Earning History"}
                    </li>

                  </ul>
                </div>
                <div class="nk-header-tools">
                  <ul class="nk-quick-nav">
                    <li class="dropdown notification-dropdown">
                      <a
                        href="#"
                        class="dropdown-toggle nk-quick-nav-icon"
                        data-bs-toggle="dropdown"
                        ><div class="icon-status icon-status-info">
                          <em class="icon ni ni-bell"></em></div
                      ></a>
                      <div
                        class="dropdown-menu dropdown-menu-xl dropdown-menu-end dropdown-menu-s1">
                        <div class="dropdown-head">
                          <span class="sub-title nk-dropdown-title"
                            >Notifications</span
                          ><a href="#">Mark All as Read</a>
                        </div>
                        <div class="dropdown-body">
                          <div class="nk-notification">
                            <div class="nk-notification-item dropdown-inner">
                              <div class="nk-notification-icon">
                                <em
                                  class="icon icon-circle bg-warning-dim ni ni-curve-down-right"></em>
                              </div>
                              <div class="nk-notification-content">
                                <div class="nk-notification-text">
                                  You have requested to <span>Widthdrawl</span>
                                </div>
                                <div class="nk-notification-time">2 hrs ago</div>
                              </div>
                            </div>
                            <div class="nk-notification-item dropdown-inner">
                              <div class="nk-notification-icon">
                                <em
                                  class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>
                              </div>
                              <div class="nk-notification-content">
                                <div class="nk-notification-text">
                                  Your <span>Deposit Order</span> is placed
                                </div>
                                <div class="nk-notification-time">2 hrs ago</div>
                              </div>
                            </div>
                            <div class="nk-notification-item dropdown-inner">
                              <div class="nk-notification-icon">
                                <em
                                  class="icon icon-circle bg-warning-dim ni ni-curve-down-right"></em>
                              </div>
                              <div class="nk-notification-content">
                                <div class="nk-notification-text">
                                  You have requested to <span>Widthdrawl</span>
                                </div>
                                <div class="nk-notification-time">2 hrs ago</div>
                              </div>
                            </div>
                            <div class="nk-notification-item dropdown-inner">
                              <div class="nk-notification-icon">
                                <em
                                  class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>
                              </div>
                              <div class="nk-notification-content">
                                <div class="nk-notification-text">
                                  Your <span>Deposit Order</span> is placed
                                </div>
                                <div class="nk-notification-time">2 hrs ago</div>
                              </div>
                            </div>
                            <div class="nk-notification-item dropdown-inner">
                              <div class="nk-notification-icon">
                                <em
                                  class="icon icon-circle bg-warning-dim ni ni-curve-down-right"></em>
                              </div>
                              <div class="nk-notification-content">
                                <div class="nk-notification-text">
                                  You have requested to <span>Widthdrawl</span>
                                </div>
                                <div class="nk-notification-time">2 hrs ago</div>
                              </div>
                            </div>
                            <div class="nk-notification-item dropdown-inner">
                              <div class="nk-notification-icon">
                                <em
                                  class="icon icon-circle bg-success-dim ni ni-curve-down-left"></em>
                              </div>
                              <div class="nk-notification-content">
                                <div class="nk-notification-text">
                                  Your <span>Deposit Order</span> is placed
                                </div>
                                <div class="nk-notification-time">2 hrs ago</div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="dropdown-foot center">
                          <a href="#">View All</a>
                        </div>
                      </div>
                    </li>
                    <li class="hide-mb-sm">
                      <a href="/?a=logout" class="nk-quick-nav-icon"
                        ><em class="icon ni ni-signout"></em
                      ></a>
                    </li>
                    <li class="dropdown user-dropdown order-sm-first">
                      <a
                        href="#"
                        class="dropdown-toggle"
                        data-bs-toggle="dropdown"
                        ><div class="user-toggle">
                          <div class="user-avatar sm">
                            <em class="icon ni ni-user-alt"></em>
                          </div>
                     
                        </div></a
                      >
                      <div
                        class="dropdown-menu dropdown-menu-md dropdown-menu-end dropdown-menu-s1 is-light">
                        <div
                          class="dropdown-inner user-card-wrap bg-lighter d-none d-md-block">
                          <div class="user-card">
                            <div class="user-avatar"><span>AB</span></div>
                            <div class="user-info">
                              <span class="lead-text">{$userinfo.name}</span
                              ><span class="sub-text">{$userinfo.email}</span>
                            </div>
                            <div class="user-action">
                              <a
                                class="btn btn-icon me-n2"
                                href="/?a=security"
                                ><em class="icon ni ni-setting"></em
                              ></a>
                            </div>
                          </div>
                        </div>
                        {* <div class="dropdown-inner user-account-info">
                          <h6 class="overline-title-alt">Account Balance</h6>
                          <div class="user-balance">
                            1,494.23
                            <small class="currency currency-usd">USD</small>
                          </div>
                          <div class="user-balance-sub">
                            Locked
                            <span
                              >15,495.39
                              <span class="currency currency-usd">USD</span></span
                            >
                          </div>
                          <a href="#" class="link"
                            ><span>Withdraw Balance</span>
                            <em class="icon ni ni-wallet-out"></em
                          ></a>
                        </div> *}
                        <div class="dropdown-inner">
                          <ul class="link-list">
                           
                            <li>
                              <a href="/?a=edit_account"
                                ><em class="icon ni ni-setting-alt"></em
                                ><span>Account Setting</span></a
                              >
                            </li>
                            <li>
                              <a href="/?a=security"
                                ><em class="icon ni ni-activity-alt"></em
                                ><span>Security Activity</span></a
                              >
                            </li>
                          </ul>
                        </div>
                        <div class="dropdown-inner">
                          <ul class="link-list">
                            <li>
                              <a href="/?a=logout"
                                ><em class="icon ni ni-signout"></em
                                ><span>Sign out</span></a
                              >
                            </li>
                          </ul>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="nk-content nk-content-lg nk-content-fluid">
            <div class="container-xl wide-lg">
              <div class="nk-content-inner">
                <div class="nk-content-body">
  