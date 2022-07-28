import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Observable } from 'rxjs';
import { Auth } from '../model/auth.model';
import { Signup } from '../model/signup.model';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {


  showTable:boolean=true;

  //This is ArraY Of Signup - 
  data:Signup[] =[];

  //Auth auth =new Auth();
  auth:Auth =new Auth();
  public message:string="Coming soon1";
 
  //This is dependency injection in Angular
 /* private authService:AuthService;
 
  constructor(authService : AuthService) { 
    this.authService=authService;
  }*/
  
  constructor(private authService : AuthService, private route:Router) { 
  }

  ngOnInit(): void {
    this.message="Coming soon3";
    //load whole data
    this.authService.findAllData().subscribe(signup =>{
        this.data =signup;
    });
  }

  /**
   * This is typical example of TypeScript code
   * @param username T
   * @param password 
   */
  validateUser() {
    //2 minutes
    //this.message=this.authService.login(this.auth);

    //It;s not return actual result
    let result = this.authService.login(this.auth);
    result.subscribe(userData=>{

      if(userData != undefined) {
         //route to home component
         localStorage.setItem('Authorization','Bearer '+userData.accessToken);
         this.route.navigate(['/home']); // navigate to other page
      }else{
        this.message= "Sorry try your luck again!";
      }
        
    });

    //100 lines of code
  }

  
}
