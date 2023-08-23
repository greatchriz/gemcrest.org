{include file="sections/affiliate-area.tpl"}



  {literal}
    
<script type="text/javascript">
//// Get the CryptoCurrency Information from the API
jQuery
  .ajax({
    url: "https://min-api.cryptocompare.com/data/pricemultifull",
    data: "fsyms=BTC,ETH,DASH,LTC,BNB,XRP,BCH,XLM,TRX,DOGE&tsyms=USD",
    dataType: "json",
  })
  .done(function (data) {
    // console.log( "BTC : " + data.RAW.BTC.USD.CHANGEPCTDAY + ", ETH : " + data.RAW.ETH.USD.CHANGEPCTDAY + ", DASH : " + data.RAW.DASH.USD.CHANGEPCTDAY + ", LTC : " + data.RAW.LTC.USD.CHANGEPCTDAY + ", XRP : " + data.RAW.XRP.USD.CHANGEPCTDAY );
    //	console.log( "BTC : " + parseFloat(data.RAW.BTC.USD.CHANGEPCTDAY).toFixed(2) + ", ETH : " + parseFloat(data.RAW.ETH.USD.CHANGEPCTDAY).toFixed(2) + ", DASH : " + parseFloat(data.RAW.DASH.USD.CHANGEPCTDAY).toFixed(2) + ", LTC : " + parseFloat(data.RAW.LTC.USD.CHANGEPCTDAY).toFixed(2) + ", XRP : " + parseFloat(data.RAW.XRP.USD.CHANGEPCTDAY).toFixed(2) );

    jQuery(".dashCoin").html(
      "$" + parseFloat(data.RAW.DASH.USD.PRICE).toFixed(2)
    );
    jQuery(".ethCoin").html(
      "$" + parseFloat(data.RAW.ETH.USD.PRICE).toFixed(2)
    );
    jQuery(".bitCoin").html(
      "$" + parseFloat(data.RAW.BTC.USD.PRICE).toFixed(2)
    );
    jQuery(".liteCoin").html(
      "$" + parseFloat(data.RAW.LTC.USD.PRICE).toFixed(2)
    );
    jQuery(".bnbCoin").html(
      "$" + parseFloat(data.RAW.BNB.USD.PRICE).toFixed(2)
    );
    jQuery(".xrpCoin").html(
      "$" + parseFloat(data.RAW.XRP.USD.PRICE).toFixed(2)
    );
    jQuery(".bchCoin").html(
      "$" + parseFloat(data.RAW.BCH.USD.PRICE).toFixed(2)
    );
    jQuery(".xlmCoin").html(
      "$" + parseFloat(data.RAW.XLM.USD.PRICE).toFixed(2)
    );
    jQuery(".dogeCoin").html(
      "$" + parseFloat(data.RAW.DOGE.USD.PRICE).toFixed(2)
    );
    jQuery(".trxCoin").html(
      "$" + parseFloat(data.RAW.TRX.USD.PRICE).toFixed(2)
    );

    var dash = parseFloat(data.RAW.DASH.USD.CHANGEPCTDAY).toFixed(2);
    var eth = parseFloat(data.RAW.ETH.USD.CHANGEPCTDAY).toFixed(2);
    var btc = parseFloat(data.RAW.BTC.USD.CHANGEPCTDAY).toFixed(2);
    var usd = parseFloat(data.RAW.LTC.USD.CHANGEPCTDAY).toFixed(2);
    var bnb = parseFloat(data.RAW.BNB.USD.CHANGEPCTDAY).toFixed(2);
    var xrp = parseFloat(data.RAW.XRP.USD.CHANGEPCTDAY).toFixed(2);
    var bch = parseFloat(data.RAW.BCH.USD.CHANGEPCTDAY).toFixed(2);
    var xlm = parseFloat(data.RAW.XLM.USD.CHANGEPCTDAY).toFixed(2);
    var doge = parseFloat(data.RAW.DOGE.USD.CHANGEPCTDAY).toFixed(2);
    var trx = parseFloat(data.RAW.TRX.USD.CHANGEPCTDAY).toFixed(2);

    if (dash >= 0) jQuery(".dashCoin_change").addClass("greenup");
    else jQuery(".dashCoin_change").addClass("purpledown");
    if (eth >= 0) jQuery(".ethCoin_change").addClass("greenup");
    else jQuery(".ethCoin_change").addClass("purpledown");
    if (btc >= 0) jQuery(".bitCoin_change").addClass("greenup");
    else jQuery(".bitCoin_change").addClass("purpledown");
    if (usd >= 0) jQuery(".liteCoin_change").addClass("greenup");
    else jQuery(".liteCoin_change").addClass("purpledown");
    if (bnb >= 0) jQuery(".bnbCoin_change").addClass("greenup");
    else jQuery(".bnbCoin_change").addClass("purpledown");
    if (xrp >= 0) jQuery(".xrpCoin_change").addClass("greenup");
    else jQuery(".xrpCoin_change").addClass("purpledown");
    if (bch >= 0) jQuery(".bchCoin_change").addClass("greenup");
    else jQuery(".bchCoin_change").addClass("purpledown");
    if (xlm >= 0) jQuery(".xlmCoin_change").addClass("greenup");
    else jQuery(".xlmCoin_change").addClass("purpledown");
    if (doge >= 0) jQuery(".dogeCoin_change").addClass("greenup");
    else jQuery(".dogeCoin_change").addClass("purpledown");
    if (trx >= 0) jQuery(".trxCoin_change").addClass("greenup");
    else jQuery(".trxCoin_change").addClass("purpledown");

    if (dash >= 0) jQuery(".dashCoin_change1").addClass("greenup1");
    else jQuery(".dashCoin_change1").addClass("purpledown1");
    if (eth >= 0) jQuery(".ethCoin_change1").addClass("greenup1");
    else jQuery(".ethCoin_change1").addClass("purpledown1");
    if (btc >= 0) jQuery(".bitCoin_change1").addClass("greenup1");
    else jQuery(".bitCoin_change1").addClass("purpledown1");
    if (usd >= 0) jQuery(".liteCoin_change1").addClass("greenup1");
    else jQuery(".liteCoin_change1").addClass("purpledown1");
    if (bnb >= 0) jQuery(".bnbCoin_change1").addClass("greenup1");
    else jQuery(".bnbCoin_change1").addClass("purpledown1");
    if (xrp >= 0) jQuery(".xrpCoin_change1").addClass("greenup1");
    else jQuery(".xrpCoin_change1").addClass("purpledown1");
    if (bch >= 0) jQuery(".bchCoin_change1").addClass("greenup1");
    else jQuery(".bchCoin_change1").addClass("purpledown1");
    if (xlm >= 0) jQuery(".xlmCoin_change1").addClass("greenup1");
    else jQuery(".xlmCoin_change1").addClass("purpledown1");
    if (doge >= 0) jQuery(".dogeCoin_change1").addClass("greenup1");
    else jQuery(".dogeCoin_change1").addClass("purpledown1");
    if (trx >= 0) jQuery(".trxCoin_change1").addClass("greenup1");
    else jQuery(".trxCoin_change1").addClass("purpledown1");

    jQuery(".dashCoin_change").html(dash + "%");
    jQuery(".ethCoin_change").html(eth + "%");
    jQuery(".bitCoin_change").html(btc + "%");
    jQuery(".liteCoin_change").html(usd + "%");
    jQuery(".bnbCoin_change").html(bnb + "%");
    jQuery(".xrpCoin_change").html(xrp + "%");
    jQuery(".bchCoin_change").html(bch + "%");
    jQuery(".xlmCoin_change").html(bch + "%");
    jQuery(".dogeCoin_change").html(doge + "%");
    jQuery(".trxCoin_change").html(trx + "%");

    // VOLUME INFORMATION
    jQuery(".dashCoin_volume").html(
      "Volume $" + data.RAW.DASH.USD.VOLUME24HOUR.toFixed(2)
    );
    jQuery(".ethCoin_volume").html(
      "Volume $" + data.RAW.ETH.USD.VOLUME24HOUR.toFixed(2)
    );
    jQuery(".bitCoin_volume").html(
      "Volume $" + data.RAW.BTC.USD.VOLUME24HOUR.toFixed(2)
    );
    jQuery(".liteCoin_volume").html(
      "Volume $" + data.RAW.LTC.USD.VOLUME24HOUR.toFixed(2)
    );
    jQuery(".bnbCoin_volume").html(
      "Volume $" + data.RAW.BNB.USD.VOLUME24HOUR.toFixed(2)
    );
    jQuery(".xrpCoin_volume").html(
      "Volume $" + data.RAW.XRP.USD.VOLUME24HOUR.toFixed(2)
    );
    jQuery(".bchCoin_volume").html(
      "Volume $" + data.RAW.BCH.USD.VOLUME24HOUR.toFixed(2)
    );
    jQuery(".xlmCoin_volume").html(
      "Volume $" + data.RAW.XLM.USD.VOLUME24HOUR.toFixed(2)
    );
    jQuery(".dogeCoin_volume").html(
      "Volume $" + data.RAW.DOGE.USD.VOLUME24HOUR.toFixed(2)
    );
    jQuery(".trxCoin_volume").html(
      "Volume $" + data.RAW.TRX.USD.VOLUME24HOUR.toFixed(2)
    );
  });
</script>
  {/literal}

</body>
</html>
