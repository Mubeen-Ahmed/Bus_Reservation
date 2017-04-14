<%@page import="java.sql.*,org.students.TicketIDGenerator" %>
<%
	int not = Integer.parseInt(request.getParameter("not"));
	String doj = request.getParameter("doj");
	String from = request.getParameter("from");
	String to = request.getParameter("to");

	TicketIDGenerator gen = new TicketIDGenerator();
	int arr[] = gen.getTicketIds(not);
	java.util.Vector<Integer> v = new java.util.Vector<Integer>();

	for(int i=0;i<arr.length;i++){
		v.add(arr[i]);
	}

	session.setAttribute("ids",v);
	session.setAttribute("doj",doj);
	session.setAttribute("from",from);
	session.setAttribute("to",to);
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");

		System.out.println("connected...");
		String vsql = "insert into bookticket1 values(?,?)";
		PreparedStatement pstmt = con.prepareStatement(vsql);

		for(int i=0;i<arr.length;i++){
			pstmt.setString(1,doj);
			pstmt.setString(2,from);
			pstmt.setString(3,to);
			pstmt.setInt(4,arr[i]);
			pstmt.executeUpdate();
		}

		con.close();
	}catch(Exception e){
		out.println(e);
	}
%>
<jsp:forward page="/busps.jsp" />

