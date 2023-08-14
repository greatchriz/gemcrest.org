{include file="main_header.tpl"}

    <section class="video-wrapper bg-overlay bg-overlay-gradient px-0 mt-0 min-vh-80">
        <video
            poster="assets/img/photos/movie2.jpg"
            src="assets/media/movie2.mp4"
            autoplay=""
            loop=""
            playsinline=""
            muted=""
        ></video>
        <div class="video-content">
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-8 col-xl-6 text-center text-white mx-auto">
                        <h1 class="display-1 fs-54 text-white mb-5"><span class="rotator-zoom">Rapid Solutions,Innovative
                                Thinking,Top-Notch Support</span></h1>
                        <p class="lead fs-24 mb-0 mx-xxl-8">We are a digital agency specializing in web design, mobile
                            development and seo optimization.</p>
                    </div>
                    <!-- /column -->
                </div>
            </div>
            <!-- /.video-content -->
        </div>
        <!-- /.content-overlay -->
    </section>


    {include file="section_header.tpl"}

        Our program is intended for people willing to achieve their financial freedom but unable to do so because they're not
        financial experts.<br>

        {$settings.site_name} is a long term high yield private loan program, backed up by Forex market trading and investing in
        various funds and activities.
        Profits from these investments are used to enhance our program and increase its stability for the long term.
    {include file="section_footer.tpl"}

    {include file="section_header.tpl"}

        {include file="index.plans.tpl"}

    {include file="section_footer.tpl"}

    {include file="section_header.tpl"}

        All payments are made to your account Daily. <br>
        Minimum spend is {$currency_sign}10 and there is no maximum. <br>
        You may make an additional spend as many times as you like. <br>
        {*All transactions are handled via e-gold. If you don't have an e-gold account, you need to get one.<br>*}
            
    {include file="section_footer.tpl"}

    {include file="section_header.tpl"}

        {if $settings.use_referal_program == 1 && $ref_plans}
            Use our referral program and earn up to {$percent}% of referral deposits!<br><br>
            <b>Our first level referral bonuses:</b>
            <table
                cellspacing=0
                cellpadding=2
                border=0
                width=100%
            >
                <tr>
                    <td class=inheader>Name</td>
                    <td class=inheader>From</td>
                    <td class=inheader>To</td>
                    <td class=inheader>Commision (%)</td>
                </tr>
                {section name=r loop=$ref_plans}
                    <tr>
                        <td class=item>{$ref_plans[r].name}</td>
                        <td
                            class=item
                            align=center
                        >{$ref_plans[r].from_value}</td>
                        <td
                            class=item
                            align=center
                        >{if $ref_plans[r].to_value == 0}and more{else}{$ref_plans[r].to_value}{/if}</td>
                        <td
                            class=item
                            align=right
                        >{$ref_plans[r].percent}</td>
                    </tr>
                {/section}
            </table>
            <br><br>
            {if $ref_levels}
                Our other levels referral bonuses (not depending on the number of referrals):<br>
                {section name=rl loop=$ref_levels}
                    Level {$ref_levels[rl].level}: <b>{$ref_levels[rl].percent}%</b><br>
                {/section}
            {/if}
        {/if}              

    {include file="section_footer.tpl"}
        


{include file="main_footer.tpl"}
