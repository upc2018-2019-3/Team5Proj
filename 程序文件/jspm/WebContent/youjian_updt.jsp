<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ʼ�</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"youjian",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"youjian"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="youjian_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸��ʼ�:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>�����ߣ�</td><td><input name='jieshouzhe' type='text' id='jieshouzhe' value='<%= mmm.get("jieshouzhe")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��Ϣ���ݣ�</td><td><textarea name='xiaoxineirong' cols='50' rows='5' id='xiaoxineirong' style='border:solid 1px #000000; color:#666666'><%=mmm.get("xiaoxineirong")%></textarea></td></tr>     <tr><td>�����ߣ�</td><td><input name='fasongzhe' type='text' id='fasongzhe' value='<%= mmm.get("fasongzhe")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


