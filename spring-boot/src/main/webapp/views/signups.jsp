<!DOCTYPE html>
<%@page import="com.cubic.dto.SignupDTO"%>
<%@page import="java.util.List"%>
<html>
<head>
<title>Signup</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <header style="height: 30px;background-color: #03a9f4;"></header>
   
  <div class="container"> 
 <img style="height: 220px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
 <img style="height: 220px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
 <img style="height: 220px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
 <h2>Signups Page</h2>
 <hr/>
 
   <a href="auth">
        	 <button type="button" class="btn btn-danger">Login</button>
        </a>
        
   &nbsp;&nbsp;&nbsp;&nbsp;
   <a href="csignup">
        	 <button type="button" class="btn btn-primary">Signup</button>
        </a>
        
         <hr/>
         
         <%
         List<SignupDTO> signups=(List<SignupDTO>)request.getAttribute("alainData");
         %>
         
   <span style="color:red;font-weight: bold;">Total Records  : <%=signups.size()%> </span>      
  <table class="table table-bordered">
    <thead>
      <tr style="background-color: #a6a6ff;">
        <th>Username</th>
        <th>Password</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Image</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
    
    <%
  
    for(SignupDTO signup : signups){
    %>
    
      <tr>
        <td><%=signup.getUsername()%></td>
        <td><%=signup.getPassword()%></td>
        <td><%=signup.getEmail()%></td>
       <td><%=signup.getMobile()%></td>
       <td>
       <a href="editImage?sid=<%=signup.getSid()%>">
     		  <img src="<%=signup.getImage()%>" style="height:120px;">
       </a>
       </td>
       <td><%=signup.getGender()%></td>
       <td><%=signup.getAddress()%></td>
        <td> 
         <a href="deleteSignup?sid=<%=signup.getSid()%>">
        	 <button type="button" class="btn btn-danger">DELETE</button>
        </a>
        </td>
      </tr>
      
      <%
      }
    %>
      
    </tbody>
  </table>
  
 <hr/>
 <hr/>
  <a href="kiki">
   <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
    <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
  </a>
 
</div>
</body>
</html>