<%@page import="java.sql.*" %>
<%!
	PreparedStatement pstmt;
%>
<%
	int id = Integer.parseInt(request.getParameter("ticketnumber"));
	String type = request.getParameter("type");

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");

		System.out.println("connected...");
		if( type.equalsIgnoreCase("One Way") ){
			String vsql = "delete from bookticket1 where seatno=?";
			pstmt = con.prepareStatement(vsql);
			pstmt.setInt(1,id);
			pstmt.executeUpdate();
		}else{
			String vsql = "delete from bookticket2 where seatno=?";
			pstmt = con.prepareStatement(vsql);
			pstmt.setInt(1,id);
			pstmt.executeUpdate();
		}
		con.close();
	}catch(Exception e){
		out.println(e);
	}
%>
<jsp:forward page="/buscan1.html" />