<%@include file="Connect.jsp" %>
<html>
<head>
</head>
<body>

<ul>
   <li><a class="active" href="AdminHomePage.jsp">Home</a></li>
  <li><a href="Insert.jsp">ADD Agency</a></li>
  <li><a href="Delete.jsp">Delete Agency</a></li> 
  <li><a href="Update.jsp">Update Agency</a></li>
   <li><a href="Displaye.jsp">Display Agency</a></li>
  <li><a href="index.html">Logout</a></li>
  
</ul>
    <table align="center" border="1">

    <%
         String Aid=request.getParameter("Aid");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select * from  agencydetails where agencyid="+Aid);
         ResultSetMetaData rsmd=rs.getMetaData();
         int cc=rsmd.getColumnCount();
         rs.next();
         %>
         <form method="get" action="UpdateNow.jsp">
         <tr><td><%=rsmd.getColumnName(1)%></td><td><input type="text" name="t1" value="<%=rs.getString(1)%>" ></td></tr>
         <tr><td><%=rsmd.getColumnName(2)%></td><td><input type="text" name="t2" value="<%=rs.getString(2)%>"></td></tr>
         <tr><td><%=rsmd.getColumnName(3)%></td><td><input type="text" name="t3" value="<%=rs.getString(3)%>"></td></tr>
         <tr><td><%=rsmd.getColumnName(4)%></td><td><input type="text" name="t4" value="<%=rs.getString(4)%>"></td></tr>
         <tr><td><%=rsmd.getColumnName(5)%></td><td><input type="text" name="t5" value="<%=rs.getString(5)%>"></td></tr> 
         <tr><td colspan="2" align="center"><input type="submit" value="Update"></td></tr>
         </form>
    </table>

</body>
</html>


