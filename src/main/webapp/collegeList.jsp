<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@page import="java.util.List" %>  
<%@ page import= "java.util.*" %>
<%@ page import= "com.Controller.GetCollegeController" %>
<%@page import="java.util.ArrayList" %>  
<%@page import="Model.Department" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>  
<style>
select {
  background-color: lightblue;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer; 
  width:250px;
}

}
</style>  

<script type="text/javascript">
        function displayAccordingly() {
        	<% List<Department> college_list1=(List<Department>) request.getAttribute("collegeName"); %>
        	 
        	var myVar = [<% for (int i = 0; i < college_list1.size(); i++) { %>"<%= college_list1.get(i).getCollege() %>"<%= i + 1 < college_list1.size() ? ",":"" %><% } %>];
        	var myVar1 = [<% for (int i = 0; i < college_list1.get(0).getDep().size(); i++) { %>"<%= college_list1.get(0).getDep().get(i) %>"<%= i + 1 < college_list1.get(0).getDep().size() ? ",":"" %><% } %>];
        	var myVar2 = [<% for (int i = 0; i < college_list1.get(1).getDep().size(); i++) { %>"<%= college_list1.get(1).getDep().get(i) %>"<%= i + 1 < college_list1.get(1).getDep().size() ? ",":"" %><% } %>];
        	var myVar3 = [<% for (int i = 0; i < college_list1.get(2).getDep().size(); i++) { %>"<%= college_list1.get(2).getDep().get(i) %>"<%= i + 1 < college_list1.get(2).getDep().size() ? ",":"" %><% } %>];
        	
        	  //Call mainMenu the college dropdown menu
            var mainMenu = document.getElementById('college');

            //Create the new dropdown menu
            var whereToPut = document.getElementById('myDiv');
            var newDropdown = document.createElement('select');
            newDropdown.setAttribute('id',"department");
            newDropdown.setAttribute('name',"department");
            whereToPut.appendChild(newDropdown);
            
            if (college.value == myVar[0]) { 	
             	for(const val of myVar1){
             		 var option1=document.createElement("option");
                      option1.text=val;
                      newDropdown.appendChild(option1);
             	}
             }  
            
            if (college.value == myVar[1]) { 	
             	for(const val of myVar2){
             		 var option1=document.createElement("option");
                      option1.text=val;
                      newDropdown.appendChild(option1);
             	}
             }  
            
            if (college.value == myVar[2]) { 	
             	for(const val of myVar3){
             		 var option1=document.createElement("option");
                      option1.text=val;
                      newDropdown.appendChild(option1);
             	}
             }              
        }
    </script>
    
    
</head>

<body>
<form method="post">
<% 
List<Department> college_list=(List<Department>) request.getAttribute("collegeName");
%>

<select name="college" id="college" onchange="displayAccordingly()" >
<option value="-1" selected="" disabled ="" >Select College</option>
<% 
for (int i=0;i<college_list.size();i++)
out.println("<option value="+college_list.get(i).getCollege()+">"+college_list.get(i).getCollege()+"</option>");
%>
</select>
<br/>
<div id="myDiv"></div>
<input type="submit" value="submit" />
</form>            
</body>
</html>








