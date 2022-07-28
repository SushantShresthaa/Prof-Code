<!DOCTYPE html>
<html>
<head>
<title>Sigup</title>
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
 <h2>Signup Page</h2>
 <hr/>
  
  
  <form action="csignup" method="post">
   <label style="font-size: 18px;">Username</label>
   <input type="text" name="username" class="form-control" style="width:60%">
   
   <label style="font-size: 18px;">Password</label>
   <input type="password" name="password" class="form-control" style="width:60%">
   
   <label style="font-size: 18px;">Email</label>
   <input type="email" name="email" class="form-control" style="width:60%">
   
   <label style="font-size: 18px;">Mobile</label>
   <input type="number" name="mobile" class="form-control" style="width:60%">
    <label style="font-size: 18px;">Image</label>
   <input type="text" name="image" class="form-control" style="width:60%">
   
   <label style="font-size: 18px;">Gender</label>
   <select  name="gender" class="form-control" style="width:40%">
       <option>Male</option>
       <option>Female</option>
   </select>
   
      
   <label style="font-size: 18px;">Address</label>
   <textarea  name="address" class="form-control" style="width:60%"></textarea>
   
   
    <br/>  
   <button type="submit" class="btn btn-primary">Signup</button>
   <button type="reset" class="btn btn-danger">Clear</button>
   
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