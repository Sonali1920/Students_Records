 <%@include file="mymenu.jsp"%>
<form action="login2.jsp">
<center>
    <%
        String s=request.getParameter("s1");
        if(s!=null)
        {
        %>
        <%=s%>
       <% } %>

<table cellpadding="12">
<tr>
<td>Enter Name</td>
<td><input type="text" placeholder="Enter Name" name="u1" class="A"></td>
</tr>

<tr>
<td>Enter Pass</td>
<td><input type="password" placeholder="Enter Password" name="u2" class="A"></td>
</tr>

<tr>
<th colspan="2"><input type="submit" class="B" value="login"></th>
</tr>
</table>
</center> 
</form>
