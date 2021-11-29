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
        	<% List<Department> college_list1=(List<Department>) request.getAttribute("collegeName"); 
        	List<String> dep_list=(List<String>) request.getAttribute("depName"); %>
        	 
        	var myVar = [<% for (int i = 0; i < college_list1.size(); i++) { %>"<%= college_list1.get(i).getCollege() %>"<%= i + 1 < college_list1.size() ? ",":"" %><% } %>];
        	var myVar1 = [<% for (int i = 0; i < college_list1.get(0).getDep().size(); i++) { %>"<%= college_list1.get(0).getDep().get(i) %>"<%= i + 1 < college_list1.get(0).getDep().size() ? ",":"" %><% } %>];
        	var myVar2 = [<% for (int i = 0; i < college_list1.get(1).getDep().size(); i++) { %>"<%= college_list1.get(1).getDep().get(i) %>"<%= i + 1 < college_list1.get(1).getDep().size() ? ",":"" %><% } %>];
        	var myVar3 = [<% for (int i = 0; i < college_list1.get(2).getDep().size(); i++) { %>"<%= college_list1.get(2).getDep().get(i) %>"<%= i + 1 < college_list1.get(2).getDep().size() ? ",":"" %><% } %>];
        	var dept=[<% for (int i = 0; i < dep_list.size(); i++) { %>"<%= dep_list.get(i) %>"<%= i + 1 < dep_list.size()? ",":"" %><% } %>];
        	var x=document.getElementById("college").value;
        	if(x==myVar[0]){
        		
        		for(const val of dept){
        			var a=document.getElementById(val).value;
        			
        			for(const deps of myVar1){
        				if(val===deps){
        					//document.write("hi");
        					document.getElementById(val).disabled = true;
        				}
        			}
        		}
        	}
        	
        	else if(x==myVar[1]){
        		
        		for(const val of dept){
        			var a=document.getElementById(val).value;
        			
        			for(const deps of myVar2){
        				if(val===deps){
        					//document.write("hi");
        					document.getElementById(val).disabled = true;
        				}
        			}
        		}
        	}
        	
        	
        	else if(x==myVar[2]){
	
				for(const val of dept){
				var a=document.getElementById(val).value;
		
					for(const deps of myVar3){
						if(val===deps){
							//document.write("hi");
						document.getElementById(val).disabled = true;
			}
		}
	}
}
 
        	else{
        		document.write("Select an option");
        	}
        }
    </script>
    
    
</head>

<body>


<form method="post">
<% 
List<Department> college_list=(List<Department>) request.getAttribute("collegeName");
List<String> dep_list1=(List<String>) request.getAttribute("depName");
List<String> col1=(List<String>) request.getAttribute("col1");
%>

<select name="college" id="college" onchange="displayAccordingly()" >
<option value="-1" selected="" disabled ="" >Select College</option>
<% 
for (int i=0;i<college_list.size();i++)
out.println("<option value="+college_list.get(i).getCollege()+">"+college_list.get(i).getCollege()+"</option>");
%>
</select>
<br/>
<br/>
<% for(int i=0;i<dep_list1.size();i++) { %>
<input type="checkbox" id=<%=dep_list1.get(i)%> name="cb" value=<%=dep_list1.get(i)%> >

<label for="l1"><%=dep_list1.get(i)%></label><br>
<%}%>

<br/>
<div id="myDiv"></div>
<input type="submit" value="submit" />
</form>            
</body>
</html>








