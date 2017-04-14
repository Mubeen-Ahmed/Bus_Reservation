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
<form action="printTicket.jsp" method="post">
<table align="center">
<tr>
<td><input type="radio" name="print" value="printTicket" id="print"></td>
<th><font color="red" size="4">Print Ticket</th>
</tr>

</table>
</br>
</br>
<input type="submit" value="submit"/>
</form>
<br/><br/>
</center>
</body>
</html>