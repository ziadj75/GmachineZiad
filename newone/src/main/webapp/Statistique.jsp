<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
String dataPoints = null;
 

	Class.forName("com.mysql.jdbc.Driver"); 
	Connection connection = DriverManager.getConnection("jdbc:mysql://i9vk72wn5y7besk1:rbav8kht9fhk37o5@ble5mmo2o5v9oouq.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/lvyie34bxg2l9rjs", "i9vk72wn5y7besk1", "rbav8kht9fhk37o5");
	Statement statement = connection.createStatement();
	String xVal, yVal;
	
	ResultSet resultSet = statement.executeQuery("select salle,Count(*) As number from machine GROUP BY salle");
	
	while(resultSet.next()){
		xVal = resultSet.getString("salle");
		yVal = resultSet.getString("number");
		map = new HashMap<Object,Object>(); map.put("x", Double.parseDouble(xVal)); map.put("y", Double.parseDouble(yVal)); list.add(map);
		dataPoints = gsonObj.toJson(list);
	}
	connection.close();


%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include  file="/include/css.jsp"%>
<script type="text/javascript">
    
window.onload = function() { 
 
<% if(dataPoints != null) { %>
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	exportEnabled: true,
	title: {
		text: "Nombre De Machine par salle "
	},
	data: [{
		type:"area", //change type to bar, line, area, pie, etc
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
<% } %> 
 
}
</script>
</head>
<body id="page-top">
    <%String uid = (String)session.getAttribute("user");
                if (uid == null)
                {
        %><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
                     <jsp:forward page="login.jsp"/>
                                         <%
                }
                else
                { %>
         
    
     <div id="wrapper">
            <%@include file="/include/sidebar.jsp" %>
          
            <div id="content" style="width: 100%">
              <%@include file="/include/header.jsp" %>
<div id="chartContainer" style="height: 100%; width: 100%;"></div>            
            </div>

        </div>
<%}
        %>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>