
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jquery</title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#button").on("click", function() {
		$.ajax({
            type: "GET",
            url: "json.jsp",
            data: {"name" : $("#name").val(), "age" : $("#age").val()},
            contentType: "application/json",
            async: false,
            beforeSend : function(xhr, setting) {
            	console.log("I am in before send");
            	console.log(xhr);
            	console.log(setting);
            },	
            complete : function(xhr, status) {
            	console.log('In complete -> ' + status);
            },
            success: function (data) {
              console.log(data.name);
            },
            failure : function(data) {
            	console.log(data);
            	console.log(data);
            }

        });	
	});
});
</script>
</head>
<body>
<input type="text" id="name">
<br/>
 <input type="text" id="age">
<button id="button">My button</button>

</body>
</html>