<!DOCTYPE html>
<html>
<head>
<title>Login</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
 
  <script type="text/javascript">
  
  	
  
      let pa;
      pa  = 100; 
  	  console.log("Hey!!!!!!!!!!!"+pa);
  	  
  	  
  	  function clearW(){
  		document.getElementById("emessage").innerHTML="";
  	  }
  	  
  	  
  	  function wow(){
  		  var username=document.getElementById("username").value;
  		  if(username.length==0) {
  			document.getElementById("emessage").innerHTML="Hey! username cannot be empty";
  			document.getElementById("username").focus();
  			return;
  		  }
  		  
  		 var password=document.getElementById("password").value;
 		  if(password.length==0) {
 			document.getElementById("emessage").innerHTML="Hey! password cannot be empty";
 			document.getElementById("password").focus();
 			return;
 		  }
 		  
 		 //Submiting for through javascript 
 		 document.forms[0].submit();
  		  
  	  }
  	  
  
  </script>
  
</head>
<body>
   <header style="height: 30px;background-color: #03a9f4;"></header>
   
  <div class="container"> 
 <img style="height: 220px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
 <img style="height: 220px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
 
 <img style="height: 220px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
 <hr/>
 <span style="color: red;font-size: 18px;font-weight: bold;" id="emessage">${message}</span>
  <hr/>
  
  <form  action="auth" method="post">
   <label style="font-size: 18px;">Username</label>
   <input type="text" name="username" id="username" class="form-control" style="width:60%" onkeypress="clearW();">
   
   <label style="font-size: 18px;">Password</label>
   <input type="password"  id="password" name="password" class="form-control" style="width:60%" onkeypress="clearW();">
    <br/>  
   <button type="button" class="btn btn-primary" onclick="wow();">Login</button>
   <button type="reset" class="btn btn-danger">Clear</button>
     
     <a href="signup.jsp">
     <button type="button" class="btn btn-success">Sign Up</button>
     </a>
 </form>
 <hr/>
 <hr/>
  <a href="kiki">
  <marquee scrolldelay="100">
   <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
    <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
       <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
          <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
             <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
                <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
                   <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
                      <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
                   <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
                      <img style="height: 60px;" src="images/student.jpg" class="img-thumbnail" alt="Cinque Terre">
                      </marquee>
  </a>
 
</div>
</body>
</html>