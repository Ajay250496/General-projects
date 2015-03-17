
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><!-- InstanceBegin template="/Templates/template.dwt" codeOutsideHTMLIsLocked="true" -->
<head>

<title>Flo's Flowershop</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor=#9FB93D leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<table width="957" height="617" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="28" background="images/leftsidefill.gif"><img src="images/spacer.gif" width="1" height="1"></td>
    <td width="755" valign="top"><table width="758" height="608" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="145" colspan="3"><img src="images/menu.gif" alt="Search for flowers and arrangements" width="758" height="142" border="0" usemap="#Map" href="../account.php">
            <map name="Map">
              <area shape="rect" coords="12,101,86,130" href="selectflowers.php" alt="Select flowers to purchase">
              <area shape="rect" coords="93,101,225,130" href="selectarrangements.php" alt="Select arrangements to purchase">
              <area shape="rect" coords="666,100,707,134" href="checkout.php" alt="View cart and checkout">
              <area shape="rect" coords="718,99,753,133" href="account.php" alt="View my account details">
              <area shape="rect" coords="9,11,141,88" href="index.html">
              <area shape="rect" coords="620,100,657,135" href="search.php" alt="Search for flowers and arrangements">
            </map></td>
        </tr>
        <tr>
          <td width="15" height="410"><img src="images/spacer.gif" width="1" height="1"></td>
          <td width="752" align="left" valign="top">
		    <!-- InstanceBeginEditable name="Content" -->
<script language="javascript">

var win = null;

function NewWindow(mypage,myname,w,h,scroll){
   LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
   TopPosition = (screen.height) ? (screen.height-h)/2 : 0;
   settings = 'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
   win = window.open(mypage,myname,settings)
}

function checkqty() {
   if (isNaN(document.flowersfrm.quantity.value)) {
       alert ("Invalid Format!\nMust be a number between 1-99");
       document.flowersfrm.quantity.focus();
       document.flowersfrm.quantity.select();
       return false;
   }
   else if (document.flowersfrm.quantity.value < 1 || document.flowersfrm.quantity.value > 99) {
      alert ("Invalid Format!\nMust be a number between 1-99");
      document.flowersfrm.quantity.focus();
      document.flowersfrm.quantity.select();
      return false;
   }
   return true;
}
</script>


<p align="right" class="carttotal">[Cart value $0.00]</p>            <p class="Content">Select the type of flowers you would like in your
              arangment. To see further details on any flower, click its image</p>
			<form name="flowersfrm" action="buyflowers.php" method="post" onsubmit="return checkqty();">
			<table width="400" align="center">
              <tr>
                <td>
                  <div style="overflow: auto; width: 400px; height: 200px; scrollbar-base-color: #9FB93D">
		          <table width=100%>
<tr><td align=left>
<p class="Content">a</p>
</td><td>
<p class="Content"><img border="0" onclick="NewWindow('showdetails.php?type=flowers&id=1','Page','400','400','yes');" src="uploads/flowers/1/pic.gif">
<input type="checkbox" name="1">
 [$1.50 each]</p>
</td></tr>
<tr><td align=left>
<p class="Content">b</p>
</td><td>
<p class="Content"><img border="0" onclick="NewWindow('showdetails.php?type=flowers&id=2','Page','400','400','yes');" src="uploads/flowers/2/pic.gif">
<input type="checkbox" name="2">
 [$1.50 each]</p>
</td></tr>
<tr><td align=left>
<p class="Content">c</p>
</td><td>
<p class="Content"><img border="0" onclick="NewWindow('showdetails.php?type=flowers&id=3','Page','400','400','yes');" src="uploads/flowers/3/pic.gif">
<input type="checkbox" name="3">
 [$1.50 each]</p>
</td></tr>
<tr><td align=left>
<p class="Content">d</p>
</td><td>
<p class="Content"><img border="0" onclick="NewWindow('showdetails.php?type=flowers&id=4','Page','400','400','yes');" src="uploads/flowers/4/pic.gif">
<input type="checkbox" name="4">
 [$1.25 each]</p>
</td></tr>
<tr><td align=left>
<p class="Content">e</p>
</td><td>
<p class="Content"><img border="0" onclick="NewWindow('showdetails.php?type=flowers&id=5','Page','400','400','yes');" src="uploads/flowers/5/pic.gif">
<input type="checkbox" name="5">
 [$1.50 each]</p>
</td></tr>
<tr><td align=left>
<p class="Content">f</p>
</td><td>
<p class="Content"><img border="0" onclick="NewWindow('showdetails.php?type=flowers&id=6','Page','400','400','yes');" src="uploads/flowers/6/pic.gif">
<input type="checkbox" name="6">
 [$1.00 each]</p>
</td></tr>
<tr><td align=left>
<p class="Content">g</p>
</td><td>
<p class="Content"><img border="0" onclick="NewWindow('showdetails.php?type=flowers&id=7','Page','400','400','yes');" src="uploads/flowers/7/pic.gif">
<input type="checkbox" name="7">
 [$2.00 each]</p>
</td></tr>
<tr><td align=left>
<p class="Content">h</p>
</td><td>
<p class="Content"><img border="0" onclick="NewWindow('showdetails.php?type=flowers&id=8','Page','400','400','yes');" src="uploads/flowers/8/pic.gif">
<input type="checkbox" name="8">
 [$1.45 each]</p>
</td></tr>
                  </table>
		          </div>
	             </td>
              </tr>
              <tr>
                <td align="right">
                  <br>
                  <p class="Content">How many arrangements would you like

<input name="quantity" size="3" value="1" onblur="checkqty();">

                  <input type="image" alt="Add to cart" src="images/addcart.gif"></p>
	            </td>
              </tr>
            </table>
			</form>
            <!-- InstanceEndEditable --></td>
          <td width="20"><img src="images/spacer.gif" width="1" height="1"></td>
        </tr>
        <tr>
          <td height=53 colspan="3" align="left"><img src="images/logo.gif"></td>
        </tr>
      </table></td>
    <td width="218" background="images/rightsidefill.gif"><img src="images/spacer.gif" width="1" height="1"></td>
  </tr>

</table>
</body>
<!-- InstanceEnd --></html>

