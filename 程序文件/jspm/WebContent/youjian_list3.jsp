<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>课程</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已选课程列表：</p>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="40" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>已选课程</td>
    <td bgcolor='#CCFFFF'>对应学分</td>
    <td bgcolor='#CCFFFF'>应缴学费</td> 
   <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"xuankexinxi"); 
    String url = "youjian_list3.jsp?1=1"; 
    String sql =  "select * from xuankexinxi";
	
if(request.getParameter("yixuankecheng")=="" ||request.getParameter("yixuankecheng")==null ){}else{sql=sql+" and yixuankecheng like '%"+request.getParameter("yixuankecheng")+"%'";}
if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";}
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
    <td><%=map.get("yixuankecheng") %></td>
 <td><%=map.get("xuefen") %></td>
  <td><%=map.get("xuefei") %></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
 
  </tr>
  	<%
  }
   %>
</table>
<br>
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

