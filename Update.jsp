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
           
           <tr><td colspan="2" align="center"><input type="submit" value="Show Agency"></td></tr>
       </table>
       
       
   </form>
</body>
</html>


