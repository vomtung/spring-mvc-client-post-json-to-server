<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/jquery-1.6.2.js"></script>
<script type="text/javascript">
	function sendAjax() {
		$.ajax({
			    url: "${pageContext.servletContext.contextPath}/index/product", 
			    type: 'POST',
			    headers: { 
			        'Accept': 'application/json',
			        'Content-Type': 'application/json' 
			    },
			    dataType: 'json', 
			    data: "{\"name\":\""+$("#name").val()+"\",\"id\":"+$("#id").val()+"}", 
			    contentType: 'application/json',
			    mimeType: 'application/json',
			    success: function(data) { 
			    	$("#result").html("");
			        $("#result").append(data.id + " " + data.name);
			    },
			    error:function(data,status,er) {
			    	$("#result").append("error: "+data+" status: "+status+" er:"+er);
			        alert("error: "+data+" status: "+status+" er:"+er);
			    }
		});
	}
</script>
</head>
<body>
	id:<input type="text" id="id"><br/>
	name:<input type="text" id="name">
	<input type="button" value="Send JSON" onclick="sendAjax()"> <br/>
	Result from server:<div id="result"></div>
</body>
</html>