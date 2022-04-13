<%@include file="Connect.jsp" %>
<%
    String tt1=request.getParameter("t1");
    String tt2=request.getParameter("t2");
    String tt3=request.getParameter("t3");
    String tt4=request.getParameter("t4");
    String tt5=request.getParameter("t5");

    PreparedStatement ps=con.prepareStatement("update agencydetails set  agencyname = ?,agencytype = ?,agencyaddress = ?,agencydesc = ? where agencyid = ?");

    ps.setString(1, tt2);
    ps.setString(2, tt3);
    ps.setString(3, tt4);
    ps.setString(4, tt5);
    ps.setString(5, tt1);
    ps.executeUpdate();
    
%>

    <script>
        window.alert("Agnecy Updated Successfully");
        window.location.assign("Update.jsp");
    </script>