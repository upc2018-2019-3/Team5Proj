<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ɷ�</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���нɷ��б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  Ժϵ���ƣ�<input name="yuanximingcheng" type="text" id="yuanximingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  רҵ���ƣ�<input name="zhuanyemingcheng" type="text" id="zhuanyemingcheng" style='border:solid 1px #000000; color:#666666' size="12" />   ѧ�ţ�<input name="zonge" type="text" id="zonge" style='border:solid 1px #000000; color:#666666' size="12" />   �ɷ��ˣ�<input name="jiaofeiren" type="text" id="jiaofeiren" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="80" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>Ժϵ����</td>    <td bgcolor='#CCFFFF'>רҵ����</td>    <td bgcolor='#CCFFFF'>רҵע���</td>    <td bgcolor='#CCFFFF'>ѧ��ѧ��</td>    <td bgcolor='#CCFFFF'>ס�޷�</td>    <td bgcolor='#CCFFFF'>�ܶ�</td>    <td bgcolor='#CCFFFF'>�շ�����</td>    <td bgcolor='#CCFFFF'>�ɷ���</td>    <td bgcolor='#CCFFFF'>��ע</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ�֧��</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>

  </tr>
 <% 
  	double zongez=0;


  	 new CommDAO().delete(request,"jiaofei"); 
    String url = "jiaofei_list2.jsp?1=1"; 
    String sql =  "select * from jiaofei where jiaofeiren='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("yuanximingcheng")=="" ||request.getParameter("yuanximingcheng")==null ){}else{sql=sql+" and yuanximingcheng like '%"+request.getParameter("yuanximingcheng")+"%'";}if(request.getParameter("zhuanyemingcheng")=="" ||request.getParameter("zhuanyemingcheng")==null ){}else{sql=sql+" and zhuanyemingcheng like '%"+request.getParameter("zhuanyemingcheng")+"%'";}if(request.getParameter("xuefei")=="" ||request.getParameter("xuefei")==null ){}else{sql=sql+" and xuefei like '%"+request.getParameter("xuefei")+"%'";}if(request.getParameter("shufei")=="" ||request.getParameter("shufei")==null ){}else{sql=sql+" and shufei like '%"+request.getParameter("shufei")+"%'";}if(request.getParameter("baoxianfei")=="" ||request.getParameter("baoxianfei")==null ){}else{sql=sql+" and baoxianfei like '%"+request.getParameter("baoxianfei")+"%'";}if(request.getParameter("zonge")=="" ||request.getParameter("zonge")==null ){}else{sql=sql+" and zonge like '%"+request.getParameter("zonge")+"%'";}if(request.getParameter("shoufeiriqi")=="" ||request.getParameter("shoufeiriqi")==null ){}else{sql=sql+" and shoufeiriqi like '%"+request.getParameter("shoufeiriqi")+"%'";}if(request.getParameter("jiaofeiren")=="" ||request.getParameter("jiaofeiren")==null ){}else{sql=sql+" and jiaofeiren like '%"+request.getParameter("jiaofeiren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	zongez=zongez+Float.valueOf((String)map.get("zonge")).floatValue();


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuanximingcheng") %></td> <td><%=map.get("zhuanyemingcheng") %></td> <td><%=map.get("xuefei") %></td> <td><%=map.get("shufei") %></td> <td><%=map.get("baoxianfei") %></td> <td><%=map.get("zonge") %></td> <td><%=map.get("shoufeiriqi") %></td> <td><%=map.get("jiaofeiren") %></td> <td><%=map.get("beizhu") %></td>  <td align='center'><%=map.get("iszf")%>  <% if(map.get("iszf").equals("��")){%><a href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=jiaofei"><font color='red'>֧��</font></a> <%}%> </td>
    <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>

  	<%
  }
   %>
</table><br>
�����ܶ�:<%=zongez%>��  
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

