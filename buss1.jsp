<%@page import="java.sql.*" %>
<%
	String from = request.getParameter("from");
	String to = request.getParameter("to");
	String doj = request.getParameter("doj");
	String dorj = request.getParameter("dorj");
	String passengers = request.getParameter("passengers");
	String busType = request.getParameter("Bustype");
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");

		System.out.println("connected...");
		String vsql = "select timing,cost from searchbus where busfrom=? and busto=?";
		PreparedStatement pstmt = con.prepareStatement(vsql);
		pstmt.setString(1,from);
		pstmt.setString(2,to);
		ResultSet rs = pstmt.executeQuery();
%>
<html>
<head>
<title>WELCOME TO SKYLINE TRAVELS</title>
<style type="text/css">
body
    {
	background:url("w.jpg");
	background-repeat:no-repeat;
	background-size:cover;
        text-align: center;
     }

.button 
 {
   
    margin: 7px;
    border-radius: 17px;
        font-size: 17px;
    color:white;
    font-style:bold;
 }

.button span 
  {
    display: inline-block;
    padding: 8px 8px;
    background-color:red;
    border-radius: 8px;
    font-family:Black;
     line-height: 1;
        font-style:bold;
  }

.button:hover span 
  {
    background-color:orange;
      }


</style>
</head>
<body>
  <img src="bus.jpg" align="right" width="550" height="125">
</br>
<p><b><i><font color="red" size="25">SKYLINE TRAVELS.in</font></i></b></p>
<center>
<table>
<tr>
<td><a href="bushome.html" class="button"><font color="white" size="4"><span>HOME</span> </font></a></td>
<td><a href="buscan.html" class="button"><font color="white" size="4"><span>CANCELLATION</span></font></a></td>
<td><a href="busps.html" class="button"><font color="white" size="4"><span>PRINT/SMS TICKET</span></font></a></td>
<td><a href="busabout.html" class="button"><font color="white" size="4"><span>ABOUT</span></font></td>
<td><a href="busterms.html" class="button"><font color="white" size="4"><span>TERMS&CONDITIONS</span></font></td>
 <td><a href="buscon.html" class="button"><font color="white" size="4"><span>CONTACT US</span></font></td>
<td><a href="busagent.html" class="button"><font color="white" size="4"><span>LOGOUT</span></font></td>
</tr>
</table>
</br>
</br>
</br>
<td><a href="round.html" class="button"><input type="Reset"/></a></td>
<td><a href="4.html"><input type="button" value="Book" /></a></td></tr>

</form>
</table>
<table  border="4" cellspacing="1" cell padding="5" width="1350">
<tr>
<th><font color="black" size="4">From</th><th><font color="black" size="4">To</th><th><font color="black" size="4">passengers</th>
<th><font color="black" size="4">Bustype</th><th><font color="black" size="4">Timing</th><th><font color="black" size="4">Cost</th>
<th><font color="black" size="4">Journey Date</th><th><font color="black" size="4">Return Date</th>

</tr>
<%
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+from+"</td>");
		out.println("<td>"+to+"</td>");
		out.println("<td>"+passengers+"</td>");
		out.println("<td>"+busType+"</td>");
		out.println("<td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"&nbsp;&nbsp;Rs</td>");
		out.println("<td>"+doj+"</td>");
		out.println("<td>"+dorj+"</td>");
		out.println("<td><a href=book1.jsp?not="+passengers+"&doj="+doj+"&dorj="+dorj+"&from="+from+"&to="+to+">BOOK</a></td>");
		out.println("</tr>");
	}

	con.close();
		
	}catch(Exception e){
		out.println(e);
	}
%>
</table>

</center>

</body>
</html>

