import { HttpEvent, HttpHandler, HttpInterceptor, HttpRequest } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class TokeninterceptorService implements HttpInterceptor {

  constructor() { }
  intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    let jwtToken=req.clone({
      setHeaders:{
        'Authorization':this.getToken()
      }
    });
    return next.handle(jwtToken);
  }

  public getToken(){
    return localStorage.getItem('Authorization') || '';
  }
}
