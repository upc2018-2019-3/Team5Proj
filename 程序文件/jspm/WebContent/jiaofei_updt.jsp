<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ɷ�</title>
	
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

new CommDAO().update(request,response,"jiaofei",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"jiaofei"); 

%>
  <form  action="jiaofei_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ľɷ�:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>Ժϵ���ƣ�</td><td><input name='yuanximingcheng' type='text' id='yuanximingcheng' value='<%= mmm.get("yuanximingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>רҵ���ƣ�</td><td><input name='zhuanyemingcheng' type='text' id='zhuanyemingcheng' value='<%= mmm.get("zhuanyemingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>רҵע��ѣ�</td><td><input name='xuefei' type='text' id='xuefei' value='<%= mmm.get("xuefei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ѧ��ѧ�ѣ�</td><td><input name='shufei' type='text' id='shufei' value='<%= mmm.get("shufei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>ס�޷ѣ�</td><td><input name='baoxianfei' type='text' id='baoxianfei' value='<%= mmm.get("baoxianfei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�ܶ</td><td><input name='zonge' type='text' id='zonge' value='<%= mmm.get("zonge")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�շ����ڣ�</td><td><input name='shoufeiriqi' type='text' id='shoufeiriqi' value='<%= mmm.get("shoufeiriqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�ɷ��ˣ�</td><td><input name='jiaofeiren' type='text' id='jiaofeiren' value='<%= mmm.get("jiaofeiren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


