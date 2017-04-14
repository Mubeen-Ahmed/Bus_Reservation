<%@page import="java.sql.*" %>
<%
	String username = request.getParameter("username");
	String pass = request.getParameter("pass");
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");

		System.out.println("connected...");
		String vsql = "select * from userregister where username=? and pass=?";
		PreparedStatement pstmt = con.prepareStatement(vsql);
		pstmt.setString(1,username);
		pstmt.setString(2,pass);

		ResultSet rs = pstmt.executeQuery();

		if(rs.next()){
			%>
			<jsp:include page="/bushome.html" />
			<%
		}else{
			%>
			<jsp:forward page="/busagent.html" />
			<%
		}
		con.close();
	}catch(Exception e){
		out.println(e);
	}
%>
