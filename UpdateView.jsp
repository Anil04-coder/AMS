<%@include file="Connect.jsp" %>

<html>
<head>
<link rel="stylesheet" href="style.css">
</head>
<body>
 <div id="mySidenav" class="sidenav">
   <a href="AdminHomePage.jsp" id="home">Home</a> 
   <a href="Insert.jsp" id="ADD">ADD Agency</a> 
   <a href="Delete.jsp" id="Delete">Delete Agency</a> 
   <a href="Update.jsp" id="Update">Update Agency</a> 
   <a href="Displaye.jsp" id="Display">Display Agency</a> 
   <a href="index.html" id="Log">Logout</a></li> 
</div>
<div style="margin-left:80px;">
  <h2>Welcome To My Agency Management System</h2>
  <p>Hover over the buttons in the left side navigation to open them.</p>
</div>
    <table  border="1" class="styled-table">

    <%
         String Aid=request.getParameter("Aid");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select * from  agencydetails where agencyid="+Aid);
         ResultSetMetaData rsmd=rs.getMetaData();
         int cc=rsmd.getColumnCount();
         rs.next();
         %>
         <form method="get" action="UpdateNow.jsp">
         <tr><td><%=rsmd.getColumnName(1)%></td><td><input type="text" name="t1" value="<%=rs.getString(1)%>" readonly="" ></td></tr>
         <tr><td><%=rsmd.getColumnName(2)%></td><td><input type="text" name="t2" value="<%=rs.getString(2)%>"></td></tr>
         <tr><td><%=rsmd.getColumnName(3)%></td><td><input type="text" name="t3" value="<%=rs.getString(3)%>"></td></tr>
         <tr><td><%=rsmd.getColumnName(4)%></td><td><input type="text" name="t4" value="<%=rs.getString(4)%>"></td></tr>
         <tr><td><%=rsmd.getColumnName(5)%></td><td><input type="text" name="t5" value="<%=rs.getString(5)%>"></td></tr> 
         <tr><td colspan="2" align="center"><input type="submit"  id="button" value="Update"></td></tr>
         </form>
    </table>

</body>
</html>


