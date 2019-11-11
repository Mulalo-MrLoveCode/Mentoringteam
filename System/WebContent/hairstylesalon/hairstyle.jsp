<%-- 
    Document   : hairstyle
    Created on : 05 Nov 2019, 11:57:10 AM
    Author     : akally
--%>


<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div id="header">
		<div class="section">
			<div class="logo">
				<a href="index.html">Mentorship</a>
			</div>
			<ul>
				<li>
					<a href="index.html">home</a>
				</li>
				<li>
					<a href="about.html">about</a>
				</li>
				<li class="selected">
					<a href="hairstyle.jsp">Administrator</a>
				</li>
				<li>
					<a href="news.html">news</a>
				</li>
			
			</ul>
		</div>
	</div>
	<div id="body">
		<h1>jjjjjjjjjjjj</h1>
	
                
	<div id="aside">
	<h3>:::::</h3>
        <div id="search">
            <input type="text"  placeholder="SEARCH ..........................">  
            <button type="submit" name="no">search</button>
        </div>
        <div id="display">
           
                            
            
            <table id="table">
                   
                            
		<thead>
                         
			<tr>
                           
				<th>Name</th>
				<th>Surname</th>
				<th>type</th>
				
			</tr>
		</thead>
		<tbody>
                     <%
            String r ,r1,r2;
          try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mentoring", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM all_zensar_stuff");

            while (rs.next()) {
                r = rs.getString(02);
                r1 = rs.getString(3);
               r2 = rs.getString(04);
             out.print("<tr><td id='name' >"+r+"</td><td id='name1'>"+r1+"</td><td id='name2'>"+r2+"</td></tr>");
            }

      
            con.close();
        } catch (Exception ex) {
           // JOptionPane.showMessageDialog(null, "ID is not available");
            System.out.println(ex.getMessage());
        }
        %>
		</tbody>
	</table>
         
        </div>
<form  action="" method="POST">
	<label>First name:</label><br>
	<input type="text"><br>
	<label>Last name:</label><br>
	<input type="text"><br>
	<label>Mentor name</label><br>
	<input type="text"><br>
                  <label>Skill</label><div id="skill">
     
        <select class="select-css" size="1" multiple>
           
        </select>
        <br>
      
                
	<input type="submit" value="Delete" name="no"><input type="submit" value="Add"><input type="submit" value="Update">

</form></div>
                  <script type="javascript">
                      function run(){
                   var table=       document.getElemetById('table1');
                    var cells=       document.getElemetByTagName('td');
                    for (var i = 0,  i < cells.length; i++) {
                        var cell=cells[i];
                        cell.onclick=function(){
                            var rowId=this.parentNode.rowIndex;
                            var rowNotSeleted=table.getElemetByTagName('tr');
                            for(var row=0;row<rowNotSeleted.length;row++){
                                
                            }
                        }
                    }
    
}
                  </script>
	</div>
	</div>
	<div id="footer">
		<div>
			<div class="connect">
				<a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a>
				<a href="http://freewebsitetemplates.com/go/facebook/" id="facebook">facebook</a>
				<a href="http://freewebsitetemplates.com/go/googleplus/" id="googleplus">googleplus</a>
				<a href="http://pinterest.com/fwtemplates/" id="pinterest">pinterest</a>
			</div>
			<p>
				&copy; copyright 2023 | all rights reserved.
			</p>
		</div>
	</div>
</body>
</html>