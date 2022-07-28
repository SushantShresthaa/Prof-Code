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
 <h2>Edit Image Signup Page</h2>
 <hr/>
  
  
  <form action="updateImage" method="post">
   <label style="font-size: 18px;">Username</label>
   
   <label style="font-size: 18px;">Email</label>
   <input type="email" name="email" value="${signup.email}"  class="form-control" style="width:100%;background-color: #fff0f0;">
    <hr/>
   <h4>Current Image</h4>
   <hr/>  
  <div class="card" style="width:400px">
    <img class="card-img-top" src="${signup.image}" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">${signup.username}</h4>
    </div>
  </div> 
  
  
   <p class="card-text">Enter new url of the image</p>
   
   <input type="hidden" name="sid" value="${signup.sid}">
   <input type="text" name="newimage" class="form-control" style="width:60%">
   
    <br/>  
   <button type="submit" class="btn btn-primary">Update</button>
   
 </form>
 <hr/>
 <hr/>
 
</div>
</body>
</html>