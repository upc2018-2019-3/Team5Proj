<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiaofei.xls");
%>
<html>
  <head>
    <title>�ɷ�</title>
  </head>

  <body >
  <p>���нɷ��б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>Ժϵ����</td>    <td bgcolor='#CCFFFF'>רҵ����</td>    <td bgcolor='#CCFFFF'>רҵע���</td>    <td bgcolor='#CCFFFF'>ѧ��ѧ��</td>    <td bgcolor='#CCFFFF'>ס�޷�</td>    <td bgcolor='#CCFFFF'>�ܶ�</td>    <td bgcolor='#CCFFFF'>�շ�����</td>    <td bgcolor='#CCFFFF'>�ɷ���</td>    <td bgcolor='#CCFFFF'>��ע</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ�֧��</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "jiaofei_list.jsp?1=1"; 
    String sql =  "select * from jiaofei where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuanximingcheng") %></td>    <td><%=map.get("zhuanyemingcheng") %></td>    <td><%=map.get("xuefei") %></td>    <td><%=map.get("shufei") %></td>    <td><%=map.get("baoxianfei") %></td>    <td><%=map.get("zonge") %></td>    <td><%=map.get("shoufeiriqi") %></td>    <td><%=map.get("jiaofeiren") %></td>    <td><%=map.get("beizhu") %></td>    <td align='center'><%=map.get("iszf")%></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=jiaofei" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

