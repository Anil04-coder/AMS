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
<%
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from  agencydetails");
   %>
   <form name="f1" method="get" action="UpdateView.jsp">
       <table align="center">
           <tr><td>Agency Number </td>
               <td>
                   <select name="Aid">
                   <%
                       
                       while(rs.next())
                       {
                           %>
                           <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                           <%
                       }
                       %>
                   </select>
                   
               </td>
           </tr>
           <tr><td colspan="2" align="center"><input type="submit" id="button" value="Show Agency"></td></tr>
       </table>
       
       
   </form>
</body>
</html>


