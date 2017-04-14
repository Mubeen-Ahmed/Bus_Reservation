<%
	java.util.Vector v = (java.util.Vector)session.getAttribute("ids");
	String doj = (String)session.getAttribute("doj");
	String dorj = (String)session.getAttribute("dorj");
String from = (String)session.getAttribute("from");
String to = (String)session.getAttribute("to");

	System.out.println(v);
%>
<html>
	<body bgcolor=white>
<img src="bus.jpg" align="right" width="550" height="125">
</br><center>
<p><b ><i><font color="red" size="20">SKYLINE TRAVELS.in</i></font></b></p></center>
</br>
</br>

		<table align=center border=3>
			<tr>
				<th colspan=2>Ticket Details</th>
			</tr>
			<tr align=center>
				<td>Date Of Journey</td>
				<td><%=doj%>
			</tr>
			<tr align=center>
				<td>Date Of Return Journey</td>
				<td><%=dorj%>

<tr align=center>
				<td>From</td>
				<td><%=from%>
			</tr>
<tr align=center>
				<td>TO</td>
				<td><%=to%>
			</tr>
			</tr>
			<tr align=center>
				<td>Seat Numbers</td>
				<td>
				<%
					for(Object x:v){
						out.println(x + ",");
					}
				%>
				</td>
			</tr>
		</table>
<pre><b>   <font color="red" size="5">                                       	 HaPpY JoUrNeY</font></b></pre>
		<br><br><a href="bushome.html">Back To Home</a>
	</body>
</html>