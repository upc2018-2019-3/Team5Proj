<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>ѧ����Ϣ</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

  <body >
<% 

String id = request.getParameter("id"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"xueshengxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmaps("yonghuming",(String)request.getSession().getAttribute("username"),"xueshengxinxi"); 
%>
  <form  action="xueshengxinxi_updt2.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸�ѧ����Ϣ:
  <br><br>
  <%
  
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>Ժϵ���ƣ�</td><td><input name='yuanximingcheng' type='text' id='yuanximingcheng' value='<%= mmm.get("yuanximingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>רҵ���ƣ�</td><td><input name='zhuanyemingcheng' type='text' id='zhuanyemingcheng' value='<%= mmm.get("zhuanyemingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' size='50' value='<%=mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>     <tr><td>�������£�</td><td><input name='chushengnianyue' type='text' id='chushengnianyue' value='<%= mmm.get("chushengnianyue")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>���䣺</td><td><input name='nianling' type='text' id='nianling' value='<%= mmm.get("nianling")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ͷ��</td><td><input name='touxiang' type='text' id='touxiang' size='50' value='<%= mmm.get("touxiang")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('touxiang')" style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' value='<%= mmm.get("shenfenzheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��ϵ�ֻ���</td><td><input name='lianxishouji' type='text' id='lianxishouji' value='<%= mmm.get("lianxishouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>΢�ţ�</td><td><input name='weixin' type='text' id='weixin' value='<%= mmm.get("weixin")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>���䣺</td><td><input name='youxiang' type='text' id='youxiang' value='<%= mmm.get("youxiang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


