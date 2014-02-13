
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jquery</title>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src = "js/jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src = "js/jqwidgets/jqxinput.js"></script>
<script type="text/javascript" src = "js/jqwidgets/jqxbuttons.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	 $("#nameTextBox").jqxInput({placeHolder: "Enter Name"});
	 $("#ageTextBox").jqxInput({placeHolder: "Enter Age"});
	 var button = $("#button").jqxButton();
 	 button.on("click", function() {
		$.ajax({
            type: "GET",
            url: "json.jsp",
            data: {"name" : $("#nameTextBox").val(), "age" : $("#ageTextBox").val()},
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
              console.log(data);
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
<input id="nameTextBox">
<br/>
 <input id="ageTextBox">
<button id="button">My button</button>

</body>
</html>