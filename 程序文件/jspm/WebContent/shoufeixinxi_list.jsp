<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�շ���Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>�����շ���Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  Ժϵ���ƣ�<input name="yuanximingcheng" type="text" id="yuanximingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  רҵ���ƣ�<input name="zhuanyemingcheng" type="text" id="zhuanyemingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  �ܶ<input name="zonge" type="text" id="zonge" style='border:solid 1px #000000; color:#666666' size="12" />  �շ����ڣ�<input name="shoufeiriqi" type="text" id="shoufeiriqi" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='shoufeixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>Ժϵ����</td>    <td bgcolor='#CCFFFF'>רҵ����</td>    <td bgcolor='#CCFFFF'>רҵע���</td>    <td bgcolor='#CCFFFF'>ѧ��ѧ��</td>    <td bgcolor='#CCFFFF'>ס�޷�</td>    <td bgcolor='#CCFFFF'>�ܶ�</td>    <td bgcolor='#CCFFFF'>�շ�����</td>    <td bgcolor='#CCFFFF'>��ע</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	double zongez=0;


  	 new CommDAO().delete(request,"shoufeixinxi"); 
    String url = "shoufeixinxi_list.jsp?1=1"; 
    String sql =  "select * from shoufeixinxi where 1=1";
	if(request.getParameter("yuanximingcheng")=="" ||request.getParameter("yuanximingcheng")==null ){}else{sql=sql+" and yuanximingcheng like '%"+request.getParameter("yuanximingcheng")+"%'";}if(request.getParameter("zhuanyemingcheng")=="" ||request.getParameter("zhuanyemingcheng")==null ){}else{sql=sql+" and zhuanyemingcheng like '%"+request.getParameter("zhuanyemingcheng")+"%'";}if (request.getParameter("xuefei1")==""  ||request.getParameter("xuefei1")==null ) {}else{sql=sql+" and xuefei >= '"+request.getParameter("xuefei1")+"'";}if (request.getParameter("xuefei2")==""  ||request.getParameter("xuefei2")==null ) {}else {sql=sql+" and xuefei <= '"+request.getParameter("xuefei2")+"'";}if (request.getParameter("shufei1")==""  ||request.getParameter("shufei1")==null ) {}else{sql=sql+" and shufei >= '"+request.getParameter("shufei1")+"'";}if (request.getParameter("shufei2")==""  ||request.getParameter("shufei2")==null ) {}else {sql=sql+" and shufei <= '"+request.getParameter("shufei2")+"'";}if (request.getParameter("baoxianfei1")==""  ||request.getParameter("baoxianfei1")==null ) {}else{sql=sql+" and baoxianfei >= '"+request.getParameter("baoxianfei1")+"'";}if (request.getParameter("baoxianfei2")==""  ||request.getParameter("baoxianfei2")==null ) {}else {sql=sql+" and baoxianfei <= '"+request.getParameter("baoxianfei2")+"'";}if(request.getParameter("zonge")=="" ||request.getParameter("zonge")==null ){}else{sql=sql+" and zonge like '%"+request.getParameter("zonge")+"%'";}if(request.getParameter("shoufeiriqi")=="" ||request.getParameter("shoufeiriqi")==null ){}else{sql=sql+" and shoufeiriqi like '%"+request.getParameter("shoufeiriqi")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	zongez=zongez+Float.valueOf((String)map.get("zonge")).floatValue();


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuanximingcheng") %></td>    <td><%=map.get("zhuanyemingcheng") %></td>    <td><%=map.get("xuefei") %></td>    <td><%=map.get("shufei") %></td>    <td><%=map.get("baoxianfei") %></td>    <td><%=map.get("zonge") %></td>    <td><%=map.get("shoufeiriqi") %></td>    <td><%=map.get("beizhu") %></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=shoufeixinxi" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shoufeixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="shoufeixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <!--qiatnalijne--> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�����ܶ�:<%=zongez%>��  
${page.info }


  </body>
</html>

