<%@page import="java.sql.*" %>
<%
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String username = request.getParameter("username");
	String pass = request.getParameter("pass");
	String repass = request.getParameter("repass");
	String gender = request.getParameter("gender");

	if( !pass.equals(repass) ){
		%>
		<jsp:forward page="/busagent.html" />
		<%
	}else{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con =		DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");

			System.out.println("connected...");
			String vsql = "insert into userregister values(?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(vsql);
			pstmt.setString(1,firstname);
			pstmt.setString(2,lastname);
			pstmt.setString(3,username);
			pstmt.setString(4,pass);
			pstmt.setString(5,gender);

			int n = pstmt.executeUpdate();
			System.out.println("n:" + n);
			con.close();
		}catch(Exception e){
			out.println(e);
		}
	}
%>
<jsp:include page="/busagent.html" />
