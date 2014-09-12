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
			    url: "${pageContext.servletContext.contextPath}/multiple/post", 
			    type: 'POST',
			    headers: { 
			        'Accept': 'application/json',
			        'Content-Type': 'application/json' 
			    },
			    dataType: 'json', 
			    data: "{\"product\":{\"name\":\""+$("#product_name").val()+"\",\"id\":"+$("#product_id").val()+
			    	"},\"user\":{\"name\":\""+$("#user_name").val()+"\",\"id\":"+$("#user_id").val()+",\"email\":\""+$("#user_email").val()+"\"}}", 
			    contentType: 'application/json',
			    mimeType: 'application/json',
			    success: function(data) { 
			    	$("#result").html("");
			    	 $("#result").val(data.id + " " + data.name+" "+data.email);
			    },
			    error:function(data,status,er) {
			    	$("#result").val("error: "+data+" status: "+status+" er:"+er);
			        alert("error: "+data+" status: "+status+" er:"+er);
			    }
		});
	}
</script>
</head>
<body>
<a href="${pageContext.servletContext.contextPath}/index">JSON single object</a>|<lable>JSON Multiple object use org.codehaus.jackson</lable><br/>
<table>
	<tr>
    	<td>Product</td>
  	</tr>
  	<tr>
    	<td>id</td>
    	<td>name</td> 
  	</tr>
  	<tr>
    	<td><input type="text" id="product_id"></td>
    	<td><input type="text" id="product_name"></td> 
  	</tr>
</table>
<table>
	<tr>
    	<td>user</td>
  	</tr>
  	<tr>
    	<td>id</td>
    	<td>name</td> 
    	<td>email</td> 
  	</tr>
  	<tr>
    	<td><input type="text" id="user_id"></td>
    	<td><input type="text" id="user_name"></td>
    	<td><input type="text" id="user_email"></td>
  	</tr>
</table>
<br/>
	<input type="button" value="Send JSON" onclick="sendAjax()"> <br/>
	<label>Result from server:</label><br/>
	<textarea id="result" readonly=true"></textarea>
</body>
</html>