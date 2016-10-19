<%@LANGUAGE="VBSCRIPT"%>
<%
set rsProducts = Server.CreateObject("ADODB.Recordset")
rs.Products.ActiveConnection = "Driver=(SQL Server); Server=65.83.225.236; Database=vectraspray_com_sql; UID=SQLUser%vectraspray.com; PWD=dj2kool"
'rsProducts.ActiveConnection = "FILEDSN=vectraspray_com_sql.dsn"
rsProducts.Source = "SELECT * FROM qryProducts"
rsProducts.CursorType = 0
rsProducts.CursorLocation = 2
rsProducts.LockType = 3
rsProducts.Open
rsProducts_numRows = 0
%>
<%
Dim Repeat1__numRows
Repeat1__numRows = -1
Dim Repeat1__index
Repeat1__index = 0
rsProducts_numRows = rsProducts_numRows + Repeat1__numRows
%> <%
' *** Go To Record and Move To Record: create strings for maintaining URL and Form parameters

' create the list of parameters which should not be maintained
MM_removeList = "&index="
If (MM_paramName <> "") Then MM_removeList = MM_removeList & "&" & MM_paramName & "="
MM_keepURL="":MM_keepForm="":MM_keepBoth="":MM_keepNone=""

' add the URL parameters to the MM_keepURL string
For Each Item In Request.QueryString
  NextItem = "&" & Item & "="
  If (InStr(1,MM_removeList,NextItem,1) = 0) Then
    MM_keepURL = MM_keepURL & NextItem & Server.URLencode(Request.QueryString(Item))
  End If
Next

' add the Form variables to the MM_keepForm string
For Each Item In Request.Form
  NextItem = "&" & Item & "="
  If (InStr(1,MM_removeList,NextItem,1) = 0) Then
    MM_keepForm = MM_keepForm & NextItem & Server.URLencode(Request.Form(Item))
  End If
Next

' create the Form + URL string and remove the intial '&' from each of the strings
MM_keepBoth = MM_keepURL & MM_keepForm
if (MM_keepBoth <> "") Then MM_keepBoth = Right(MM_keepBoth, Len(MM_keepBoth) - 1)
if (MM_keepURL <> "")  Then MM_keepURL  = Right(MM_keepURL, Len(MM_keepURL) - 1)
if (MM_keepForm <> "") Then MM_keepForm = Right(MM_keepForm, Len(MM_keepForm) - 1)

' a utility function used for adding additional parameters to these strings
Function MM_joinChar(firstItem)
  If (firstItem <> "") Then
    MM_joinChar = "&"
  Else
    MM_joinChar = ""
  End If
End Function
%> 
<html>
<head>
<title>Vectra Protection - Unique Gift Item!</title>
<script language="JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v3.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_showHideLayers() { //v3.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }
    obj.visibility=v; }
}

function MM_changeProp(objName,x,theProp,theValue) { //v3.0
  var obj = MM_findObj(objName);
  if (obj && (theProp.indexOf("style.")==-1 || obj.style)) eval("obj."+theProp+"='"+theValue+"'");
}

function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}

function tmt_DivAlign(theDiv,h,v,hPx,vPx){
	var obj,fun,dw,dh,lw,lh,x,y;
	fun = (document.getElementById) ? "document.getElementById" : "MM_findObj";
	obj = (document.getElementById) ? document.getElementById(theDiv) : MM_findObj(theDiv);
	if(obj){if(document.all){
	dw = document.body.clientWidth;dh = document.body.clientHeight;}
	else{dw = innerWidth;dh = innerHeight;}
	if(document.layers){lw = obj.clip.width;lh = obj.clip.height;}else{
	lw = obj.style.width.replace("px","");lh = obj.style.height.replace("px","");}
	x = (document.layers) ? ".left" : ".style.left";
	y = (document.layers) ? ".top" : ".style.top";
	if(h == "l"){eval(fun+"('"+theDiv+"')"+x+"="+hPx);}
	if(h == "c"){eval(fun+"('"+theDiv+"')"+x+"="+dw+"/2-"+lw+"/2");}
	if(h == "r"){eval(fun+"('"+theDiv+"')"+x+"="+dw+"-"+lw+"-"+hPx);}
	if(v == "t"){eval(fun+"('"+theDiv+"')"+y+"="+vPx);}
	if(v == "m"){eval(fun+"('"+theDiv+"')"+y+"="+dh+"/2-"+lh+"/2");}
	if(v == "b"){eval(fun+"('"+theDiv+"')"+y+"="+dh+"-"+lh+"-"+vPx);}}
}
//-->
</script>
</head>
<body topmargin="0" bgcolor="#FFFFFF" leftmargin="0" link="#808000" vlink="#808000" alink="#808000" onLoad="MM_preloadImages('images/SeeDetailsGlow.jpg','images/ViewCartOver.jpg','images/SeeDetailsOver.jpg');tmt_DivAlign('lrMenu1','r','t','0','0');MM_showHideLayers('lrMenu1','','show')">
<div align="left">
  <div id="lrMenu1" style="position:absolute; left:170px; top:52px; width:365px; height:186px; z-index:3; visibility: hidden"> 
    <div id="lrHeadB" style="position:absolute; left:96%; top:0; width:4%; height:19; z-index:2; visibility: inherit; background-color: #993333; layer-background-color: #993333; border: 1px none #000000"> 
      <div align="center"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"></font></div>
    </div>
    <div id="lrHeadF" style="position:absolute; left:0; top:0; width:16%; height:19; z-index:5; visibility: inherit; overflow: hidden"> 
      <div align="right"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"><img src="images/MenuEnd.gif" width="53" height="19"></font></div>
    </div>
    <div id="lrHead4" style="position:absolute; left:76%; top:0; width:20%; height:19; z-index:3; visibility: inherit; background-color: #993333; layer-background-color: #993333; border: 1px none #000000"> 
      <div align="center"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF"> 
        </font></div>
    </div>
    <div id="lrHead3" style="position:absolute; left:56%; top:0; width:20%; height:19; z-index:4; visibility: inherit; background-color: #993333; layer-background-color: #993333; border: 1px none #000000" onMouseOver="MM_changeProp('lrHead3','','style.backgroundColor','#999999','LAYER');MM_showHideLayers('lrMenuList1','','hide')" onMouseOut="MM_changeProp('lrHead3','','style.backgroundColor','#993333','LAYER')" onClick="MM_goToURL('parent','VectraNews.asp');return document.MM_returnValue"> 
      <div align="center"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">News</font></div>
    </div>
    <div id="lrHead1" style="position:absolute; left:36%; top:0; width:20%; height:19; z-index:6; visibility: inherit; background-color: #993333; layer-background-color: #993333; border: 1px none #000000; overflow: visible" onMouseOver="MM_showHideLayers('lrMenuList1','','show');MM_changeProp('lrHead1','','style.backgroundColor','#999999','LAYER')" onMouseOut="MM_changeProp('lrHead1','','style.backgroundColor','#993333','LAYER')"> 
      <div align="center"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">Products</font></div>
    </div>
    <div id="lrMenuList1" style="position:absolute; width:94px; height:109px; z-index:1; left: 36%; top: 19; visibility: hidden; background-color: #993333; layer-background-color: #993333; border: 1px none #000000; overflow: visible" onMouseOut="MM_showHideLayers('lrMenuList1','','hide');MM_changeProp('lrHead1','','style.backgroundColor','#993333','LAYER')" onMouseOver="MM_showHideLayers('lrMenuList1','','show');MM_changeProp('lrHead1','','style.backgroundColor','#999999','LAYER')"> 
      <div id="lrList1Item5" style="position:absolute; left:0; top:80%; width:100%; height:20%; z-index:9; visibility: inherit; background-color: #993333; layer-background-color: #993333; border: 1px none #000000" onClick="MM_goToURL('parent','pVectex.asp');return document.MM_returnValue" onMouseOut="MM_changeProp('lrList1Item5','','style.backgroundColor','#993333','LAYER')" onMouseOver="MM_changeProp('lrList1Item5','','style.backgroundColor','#999999','LAYER')"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">Vectex</font></div>
      <div id="lrList1Item4" style="position:absolute; left:0; top:60%; width:100%; height:20%; z-index:10; visibility: inherit; background-color: #993333; layer-background-color: #993333; border: 1px none #000000" onClick="MM_goToURL('parent','pVectec.asp');return document.MM_returnValue" onMouseOver="MM_changeProp('lrList1Item4','','style.backgroundColor','#999999','LAYER')" onMouseOut="MM_changeProp('lrList1Item4','','style.backgroundColor','#993333','LAYER')"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">Vectec</font></div>
      <div id="lrList1Item3" style="position:absolute; left:0; top:40%; width:100%; height:20%; z-index:11; background-color: #993333; layer-background-color: #993333; border: 1px none #000000; visibility: inherit" onClick="MM_goToURL('parent','pVectra16.asp');return document.MM_returnValue" onMouseOver="MM_changeProp('lrList1Item3','','style.backgroundColor','#999999','LAYER')" onMouseOut="MM_changeProp('lrList1Item3','','style.backgroundColor','#993333','LAYER')"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">Vectra 
        16 </font></div>
      <div id="lrList1Item2" style="position:absolute; left:0; top:20%; width:100%; height:20%; z-index:12; background-color: #993333; layer-background-color: #993333; border: 1px none #000000; visibility: inherit" onClick="MM_goToURL('parent','pVectra22.asp');return document.MM_returnValue" onMouseOver="MM_changeProp('lrList1Item2','','style.backgroundColor','#999999','LAYER')" onMouseOut="MM_changeProp('lrList1Item2','','style.backgroundColor','#993333','LAYER')"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">Vectra 
        22 </font></div>
      <div id="lrList1tem1" style="position:absolute; left:0; top:0; width:100%; height:20%; z-index:13; background-color: #993333; layer-background-color: #993333; border: 1px none #000000; visibility: inherit" onClick="MM_goToURL('parent','VectraProductsList.asp');return document.MM_returnValue" onMouseOver="MM_changeProp('lrList1tem1','','style.backgroundColor','#999999','LAYER')" onMouseOut="MM_changeProp('lrList1tem1','','style.backgroundColor','#993333','LAYER')"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">Shop 
        Online </font> </div>
    </div>
    <div id="lrHead2" style="position:absolute; width:20%; height:19; z-index:5; visibility: inherit; background-color: #993333; layer-background-color: #993333; border: 1px none #000000; top: 0; left: 16%" onMouseOver="MM_changeProp('lrHead2','','style.backgroundColor','#999999','LAYER');MM_showHideLayers('lrMenuList1','','hide')" onMouseOut="MM_changeProp('lrHead2','','style.backgroundColor','#993333','LAYER')" onClick="MM_goToURL('parent','Index.htm');return document.MM_returnValue"> 
      <div align="center"><font face="Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">Home</font></div>
    </div>
  </div>
  <table border="0" width="780" cellspacing="0" cellpadding="0" style="margin: 0; padding: 0">
    <tr> 
      <td width="62" style="border-right: 0px none rgb(128,0,0); margin: 0px; padding-left: 0; padding-right: 0; padding-top: 0; padding-bottom: 0px" valign="top" align="right" bgcolor="#FFFFFF" background="images/VectraSide.jpg" height="1"></td>
      <td style="border-right: 2px none; margin: 0px; padding-left: 25px; padding-right: 25px; padding-top: 15px; padding-bottom: 10px" valign="top" align="left" bgcolor="#FFFFFF" height="1" width="452"><img src="images/VectraShopOnline.jpg" usemap="#TitleImage" border="0" WIDTH="400" HEIGHT="73"></td>
      <td style="border-left: thin none rgb(255,166,166); margin-left: 0; padding-left: 15px; padding-right: 15px; padding-top: 10px" valign="middle" align="center" bgcolor="#FFFFFF" height="1"><a name="Vectra Enterprises, Inc." onFocus="if(this.blur)this.blur()"><font size="2" face="Arial" color="#800000">Vectra 
        Enterprises, Inc.<br>
        </font></a><strong><font face="Arial" color="#800000" size="3">1-800-241-4982<br>
        1-800-241-4880</font></strong></td>
      <td bgcolor="#FFFFFF" width="9" height="1"></td>
    </tr>
    <tr> 
      <td width="62" style="border-right: 0px none rgb(128,0,0); margin: 0px; padding-left: 0; padding-right: 0; padding-top: 0; padding-bottom: 0px" valign="top" align="right" bgcolor="#FFFFFF" background="images/VectraSide.jpg" height="873"></td>
      <td style="border-right: 2px solid rgb(128,0,0); margin: 0px; padding-left: 25px; padding-right: 25px; padding-top: 10px; padding-bottom: 0px" valign="top" align="left" bgcolor="#FFFFFF" height="873" width="452"><a href="VectraCart.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/ViewCartOver.jpg',1)" onFocus="if(this.blur)this.blur()"><img name="Image4" border="0" src="images/ViewCart.jpg" width="97" height="30"></a><br>
        <table border="0" width="100%" cellspacing="0">
          <tr> 
            <td width="20%"></td>
            <td></td>
            <td></td>
            <td width="20%"></td>
            <td width="20%"></td>
          </tr>
          <%
While ((Repeat1__numRows <> 0) AND (NOT rsProducts.EOF))
%> 
          <tr bgcolor="#F1F1E2"> 
            <td><font size="1" face="Arial, Helvetica, sans-serif" color="#993333"><b><font size="2">Item 
              <%=(rsProducts.Fields.Item("fldItemName").Value)%></font></b></font><font face="Arial, Helvetica, sans-serif" size="1"> 
              </font></td>
            <td></td>
            <td></td>
            <td><font face="Arial, Helvetica, sans-serif" size="2" color="#993333"><b><%= FormatCurrency((rsProducts.Fields.Item("fldPrice").Value), 2, -2, -2, -2) %></b><i><font size="1">+<%= FormatCurrency((rsProducts.Fields.Item("fldShipping").Value), 2, -2, -2, -2) %></font></font><font face="Arial, Helvetica, sans-serif" size="1" color="#993333">S&amp;H</font> </i> 
              <br>
            </td>
            <td></td>
          </tr>
          <tr> 
            <td rowspan="2" align="left" valign="top"><A HREF="VectraProductDetail.asp?<%= MM_keepNone & MM_joinChar(MM_keepNone) & "ID=" & rsProducts.Fields.Item("fldProductID").Value %>" onFocus="if(this.blur)this.blur()"><img src="images/SeeDetails.jpg" width="54" height="30" name="Image1" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','images/SeeDetailsOver.jpg',1)" border="0"></A> 
            </td>
            <td colspan="3" height="5"></td>
            <td rowspan="2"></td>
          </tr>
          <tr> 
            <td colspan="3"><font face="Arial, Helvetica, sans-serif" size="2" color="#993333"><%=(rsProducts.Fields.Item("fldDescription").Value)%></font></td>
          </tr>
          <tr> 
            <td></td>
            <td colspan="3"></td>
            <td></td>
          </tr>
          <%
Repeat1__index=Repeat1__index+1
Repeat1__numRows=Repeat1__numRows-1
rsProducts.MoveNext()
Wend
%> 
          <tr> 
            <td width="20%"></td>
            <td></td>
            <td></td>
            <td width="20%"></td>
            <td width="20%"></td>
          </tr>
        </table>
        <p align="center"><font face="Arial" size="2" color="#0000FF"><br>
          <a href="VectraProductsList.asp#Vectra Enterprises, Inc." onFocus="if(this.blur)this.blur()"><font color="#CCCC99">Back 
          to top</font></a></font> 
      </td>
      <td style="border-left: thin solid rgb(255,166,166); margin-left: 0; padding-left: 15px; padding-right: 15px; padding-top: 10px" valign="top" align="left" bgcolor="#FFF0F0" height="873">
        <p><font face="Arial, Helvetica, sans-serif" size="2" color="#993333">Welcome 
          to the Vectra online store.</font></p>
        <p><font face="Arial, Helvetica, sans-serif" size="2" color="#993333">To 
          add items to your shopping cart for later purchase click the 'Details' 
          icon for that product.</font></p>
        <p><font face="Arial, Helvetica, sans-serif" size="2" color="#993333">To 
          view the contents of your shopping cart or to finalize your purchase 
          click the 'View Cart' icon.</font></p>
        <p><font face="Arial, Helvetica, sans-serif" size="2" color="#993333">For 
          more information on a Vectra product, select from the products menu 
          above. <br>
          <br>
          Shipping quoted for Continential US orders only. Call for international 
          orders. </font></p>
        <p align="center"><img src="images/BBB.jpg" width="125" height="53"></p>
        </td>
      <td bgcolor="#FFFFFF" width="9" height="873"></td>
    </tr>
  </table>
</div>
</body>
</html>
