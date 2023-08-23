var T3=T4='';

if (typeof document.compatMode!='undefined'&&document.compatMode!='BackCompat') {
    tright_doctp="_top:expression(document.documentElement.scrollTop+this.clientHeight-90);_left:expression(document.documentElement.scrollLeft+document.documentElement.clientWidth-offsetWidth);}";
    tright_doctp2="_top:expression(document.documentElement.scrollTop+this.clientHeight-offsetHeight+50);}";
} else {
    tright_doctp="_top:expression(document.body.scrollTop+this.clientHeight-90);_left:expression(document.body.scrollLeft + document.body.clientWidth-offsetWidth);}";
    tright_doctp2="_top:expression(document.body.scrollTop+this.clientHeight-offsetHeight);}";
}


var tright_fixedcss='#trightfixed_div{position:fixed;_position:absolute;top:0px;right:0px;z-index: 9999;'+tright_doctp;
var tright_popcss='#HYIPS_pop {background-color: transparent;position:fixed;_position:absolute;right: 50px;top: 50px;overflow: hidden;visibility: hidden;z-index: 9999;'+tright_doctp2;


document.write('<style type="text/css">'+tright_fixedcss+tright_popcss+'</style>');

function trightpop_hide()
{
    var cred_id='HYIPS_pop';
    if (document.getElementById) {
        document.getElementById(cred_id).style.visibility='hidden';
    } else if (document.layers) {
        document.layers[cred_id].visibility='hidden';
    } else if (document.all) {
       eval("document.all.'+cred_id+'.style.v=\"hidden\"");
    }
}

function trightpop_show()
{
    var cred_id='HYIPS_pop';
    if (document.getElementById) {
        document.getElementById(cred_id).style.visibility='visible';
    } else if (document.layers) {
        document.layers[cred_id].visibility='show';
    } else if (document.all) {
       eval("document.all.'+cred_id+'.style.v=\"visible\"");
    }
}

function show_topright(type,id,usr)
{

		var image1='https://www.hyipexplorer.com/status/statusjs.php?ids=' +id+'&pos=2';
		var image2='https://www.hyipexplorer.com/status'+type+id+'.gif';
		var url='http://www.hyipexplorer.com/'+usr+'_'+id+'/';
        	var pixel='https://www.hyipexplorer.com/images/pixel.gif';

    document.write('<div id="HYIPS_pop">');
    document.write('<img name=topright src="' + image2 + '" border=0 alt="HYIP">');
    document.write('</div>');
    document.write('<div id="trightfixed_div">');
  if (/MSIE (5\.5|6).+Win/.test(navigator.userAgent))
  {
 document.write('<a onfocus="this.blur()" href="' +url+ '" target="_blank"><img border=0 hspace=0 '+'vspace=0 src="' +pixel+ '" + style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='+image1+')" ');
 } else {
 document.write('<a onfocus="this.blur()" href="' +url+ '" target="_blank"><img border=0 hspace=0 '+'vspace=0 src="' +image1+ '" ');
 }
    document.write('onMouseOver="T1=setTimeout(\'trightpop_show()\',100);clearTimeout(T3)" ')
    document.write('onMouseOut="T2=setTimeout(\'trightpop_hide()\',100);clearTimeout(T4)"></a>');
    document.write('</div>');
}