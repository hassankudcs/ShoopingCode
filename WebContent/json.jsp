<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Map"%>
<%
	response.setContentType("application/json");
	Map<String, String[]> map = request.getParameterMap();
	String str = "{";
	int i = 0;
	for(Entry<String, String[]> entry : map.entrySet()) {
		System.out.println("I am in loop");	
		str += "\"" + entry.getKey() + "\":\"" + entry.getValue()[0] + "\"";
		if(i < 1) {
			str += ",";
		}
		else {
			continue;
		}
		i++;
	}
	System.out.println(str);
	response.getWriter().print(str + "}");
	//response.getWriter().print("{\"name\" : \"puneet\"}");
%>