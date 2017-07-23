<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<%-- <%@ page import="org.json.JSONException" %> --%>
<%@page import="org.json.JSONObject" %>
<%@page import="org.json.JSONArray" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Map" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<script src="./vendor/jquery/jquery.js"></script>
<script>

</script>
</head>
<body>

<% List<Map<String,String>> list=(List<Map<String,String>>)request.getAttribute("list"); 
	for(int i =0; i<list.size();i++){
		out.print(list.get(i));
	}

%>
<input type="button" id="zzz">
<span id="dog"></span>

</body>
</html>