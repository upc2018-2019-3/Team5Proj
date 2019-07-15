<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>收费信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="shoufeixinxi_add.jsp?id=<%=id%>&yuanximingcheng="+document.form1.yuanximingcheng.value;
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){

double zongej=0;zongej=Float.valueOf(request.getParameter("xuefei")).floatValue()+Float.valueOf(request.getParameter("shufei")).floatValue()+Float.valueOf(request.getParameter("baoxianfei")).floatValue()+Float.valueOf(request.getParameter("zafei")).floatValue();
ext.put("issh","否");

ext.put("zonge",zongej);

}
new CommDAO().insert(request,response,"shoufeixinxi",ext,true,false,""); 
%>

  <body >
 <form  action="shoufeixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加收费信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>院系名称：</td><td><%=Info.getselect("yuanximingcheng","zhuanyexinxi","yuanximingcheng")%>&nbsp;*<label id='clabelyuanximingcheng' /></td></tr>
		<tr><td  width="200">专业名称：</td><td><input name='zhuanyemingcheng' type='text' id='zhuanyemingcheng' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelzhuanyemingcheng' /></td></tr>
		<tr><td  width="200">专业注册费：</td><td><input name='xuefei' type='text' id='xuefei' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelxuefei' /></td></tr>
		<tr><td  width="200">学分学费：</td><td><input name='shufei' type='text' id='shufei' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshufei' /></td></tr>
		<tr><td  width="200">住宿费：</td><td><input name='baoxianfei' type='text' id='baoxianfei' value='' onblur='WdatePicker({'dateFmt':'yyyy-MM-dd'})' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelbaoxianfei' /></td></tr>
		<tr><td  width="200">总额：</td><td>此项不必填写，系统自动计算</td></tr>
		<tr><td  width="200">收费日期：</td><td><input name='shoufeiriqi' type='text' id='shoufeiriqi' value='' onblur=''readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("yuanximingcheng")==null || request.getParameter("yuanximingcheng").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("yuanximingcheng",request.getParameter("yuanximingcheng"),"zhuanyexinxi"); 
%>
<script language="javascript">
document.form1.yuanximingcheng.value="<%=mmm.get("yuanximingcheng")%>";
document.form1.zhuanyemingcheng.value="<%=mmm.get("zhuanyemingcheng")%>";
//suilafuzhi

</script>
<%
}
%>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var yuanximingchengobj = document.getElementById("yuanximingcheng"); if(yuanximingchengobj.value==""){document.getElementById("clabelyuanximingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入院系名称</font>";return false;}else{document.getElementById("clabelyuanximingcheng").innerHTML="  "; } 
	var zhuanyemingchengobj = document.getElementById("zhuanyemingcheng"); if(zhuanyemingchengobj.value==""){document.getElementById("clabelzhuanyemingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入专业名称</font>";return false;}else{document.getElementById("clabelzhuanyemingcheng").innerHTML="  "; } 
	var xuefeiobj = document.getElementById("xuefei"); if(xuefeiobj.value==""){document.getElementById("clabelxuefei").innerHTML="&nbsp;&nbsp;<font color=red>请输入学费</font>";return false;}else{document.getElementById("clabelxuefei").innerHTML="  "; } 
	var xuefeiobj = document.getElementById("xuefei"); if(xuefeiobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(xuefeiobj.value)){document.getElementById("clabelxuefei").innerHTML=""; }else{document.getElementById("clabelxuefei").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var shufeiobj = document.getElementById("shufei"); if(shufeiobj.value==""){document.getElementById("clabelshufei").innerHTML="&nbsp;&nbsp;<font color=red>请输入书费</font>";return false;}else{document.getElementById("clabelshufei").innerHTML="  "; } 
	var shufeiobj = document.getElementById("shufei"); if(shufeiobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(shufeiobj.value)){document.getElementById("clabelshufei").innerHTML=""; }else{document.getElementById("clabelshufei").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var baoxianfeiobj = document.getElementById("baoxianfei"); if(baoxianfeiobj.value==""){document.getElementById("clabelbaoxianfei").innerHTML="&nbsp;&nbsp;<font color=red>请输入保险费</font>";return false;}else{document.getElementById("clabelbaoxianfei").innerHTML="  "; } 
	var baoxianfeiobj = document.getElementById("baoxianfei"); if(baoxianfeiobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(baoxianfeiobj.value)){document.getElementById("clabelbaoxianfei").innerHTML=""; }else{document.getElementById("clabelbaoxianfei").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


