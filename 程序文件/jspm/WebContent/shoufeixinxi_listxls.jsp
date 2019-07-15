<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shoufeixinxi.xls");
%>
<html>
  <head>
    <title>收费信息</title>
  </head>

  <body >
  <p>已有收费信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>院系名称</td>    <td bgcolor='#CCFFFF'>专业名称</td>    <td bgcolor='#CCFFFF'>专业注册费</td>    <td bgcolor='#CCFFFF'>学分学费</td>    <td bgcolor='#CCFFFF'>住宿费</td>    <td bgcolor='#CCFFFF'>总额</td>    <td bgcolor='#CCFFFF'>收费日期</td>    <td bgcolor='#CCFFFF'>备注</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "shoufeixinxi_list.jsp?1=1"; 
    String sql =  "select * from shoufeixinxi where 1=1";
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
    <td><%=map.get("yuanximingcheng") %></td>    <td><%=map.get("zhuanyemingcheng") %></td>    <td><%=map.get("xuefei") %></td>    <td><%=map.get("shufei") %></td>    <td><%=map.get("baoxianfei") %></td>    <td><%=map.get("zonge") %></td>    <td><%=map.get("shoufeiriqi") %></td>    <td><%=map.get("beizhu") %></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=shoufeixinxi" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

