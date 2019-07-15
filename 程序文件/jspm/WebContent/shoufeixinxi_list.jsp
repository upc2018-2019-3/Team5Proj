<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>收费信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有收费信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  院系名称：<input name="yuanximingcheng" type="text" id="yuanximingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  专业名称：<input name="zhuanyemingcheng" type="text" id="zhuanyemingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  总额：<input name="zonge" type="text" id="zonge" style='border:solid 1px #000000; color:#666666' size="12" />  收费日期：<input name="shoufeiriqi" type="text" id="shoufeiriqi" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='shoufeixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>院系名称</td>    <td bgcolor='#CCFFFF'>专业名称</td>    <td bgcolor='#CCFFFF'>专业注册费</td>    <td bgcolor='#CCFFFF'>学分学费</td>    <td bgcolor='#CCFFFF'>住宿费</td>    <td bgcolor='#CCFFFF'>总额</td>    <td bgcolor='#CCFFFF'>收费日期</td>    <td bgcolor='#CCFFFF'>备注</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
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
    <td><%=map.get("yuanximingcheng") %></td>    <td><%=map.get("zhuanyemingcheng") %></td>    <td><%=map.get("xuefei") %></td>    <td><%=map.get("shufei") %></td>    <td><%=map.get("baoxianfei") %></td>    <td><%=map.get("zonge") %></td>    <td><%=map.get("shoufeiriqi") %></td>    <td><%=map.get("beizhu") %></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=shoufeixinxi" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shoufeixinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="shoufeixinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <!--qiatnalijne--> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
共计总额:<%=zongez%>；  
${page.info }


  </body>
</html>

