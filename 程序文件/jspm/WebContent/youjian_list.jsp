<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>公告</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>公告列表：</p>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="40" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>公告内容</td>
    <td width="158" align="center"bgcolor='#CCFFFF'>发布者</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"youjian"); 
    String url = "youjian_list2.jsp?1=1"; 
    String sql =  "select * from youjian";
	
if(request.getParameter("fasongzhe")=="" ||request.getParameter("fasongzhe")==null ){}else{sql=sql+" and fasongzhe like '%"+request.getParameter("fasongzhe")+"%'";}
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
 <td><%=map.get("xiaoxineirong") %></td>
 <td><%=map.get("fasongzhe") %></td>
 
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table><br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>