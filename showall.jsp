<%@page import="java.sql.*"%>
<%@include file="MymenuDemo.jsp"%>
 <center>
    <%
        String s=request.getParameter("s1");
        if(s!=null)
        {
        %>
        <%=s%>
       <% } %>
 </center>
    <% 
    try
    {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///marksdb","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from marks");
    
   %>
       <center>
           <table cellpadding="12">
               <tr>
                <td> URNO </td>
                <td> UNAME </td>
                <td> UPHY </td>
                <td> UCHE </td>
                <td> UMATHS </td>
                </tr>
                <%
                while(rs.next())
                {
                %>
                <tr>
                <td> <%=rs.getString(1)%> </td>
                <td> <%=rs.getString(2)%> </td>
                <td> <%=rs.getString(3)%> </td>
                <td> <%=rs.getString(4)%> </td>
                <td> <%=rs.getString(5)%> </td>
                </tr>
                <%
                }
             con.close();
}
catch(Exception e1)
{
out.println(e1);
} 
%>
</table>
</center>


