<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xueshengxinxi.xls");
%>
<html>
  <head>
    <title>ѧ����Ϣ</title>
  </head>

  <body >
  <p>����ѧ����Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�û���</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>Ժϵ����</td>    <td bgcolor='#CCFFFF'>רҵ����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF' width='40' align='center'>�Ա�</td>    <td bgcolor='#CCFFFF' width='65' align='center'>��������</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF' width='90' align='center'>ͷ��</td>    <td bgcolor='#CCFFFF'>���֤</td>    <td bgcolor='#CCFFFF'>��ϵ�ֻ�</td>    <td bgcolor='#CCFFFF'>΢��</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>��ע</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "xueshengxinxi_list.jsp?1=1"; 
    String sql =  "select * from xueshengxinxi where 1=1";
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
    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("yuanximingcheng") %></td>    <td><%=map.get("zhuanyemingcheng") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("chushengnianyue") %></td>    <td><%=map.get("nianling") %></td>    <td width='90' align='center'><a href='<%=map.get("touxiang") %>' target='_blank'><img src='<%=map.get("touxiang") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("shenfenzheng") %></td>    <td><%=map.get("lianxishouji") %></td>    <td><%=map.get("weixin") %></td>    <td><%=map.get("youxiang") %></td>    <td><%=map.get("beizhu") %></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=xueshengxinxi" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
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

