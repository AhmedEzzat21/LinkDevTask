//
//  UserEndPoint.swift
//  BokehStote
//
//  Created by Khaled on 7/3/18.
//  Copyright © 2018 Khaled. All rights reserved.
//

import Foundation
import Alamofire

enum AuthEndPoint : BaseRequestBuilder {
    
    case register(username :String  , mobile : String  ,email : String , city_id : Int ,password : String,  device_id : String)
    case login(mobile :String  , password : String  ,device_id : String)
    case activeAccount(code : String , device_id : String)
    case forgetPass(mobile : String)
    case newPassword(new_password : String)
    case resendCode (mobile : String)
    case logout ()

    var path: String {
        switch self {
        case .register:
            return "auth/signup_client"
        case .login:
            return "auth/signin"
        case .activeAccount:
            return "auth/active"
        case .forgetPass:
            return "auth/forget_password"
        case .newPassword:
            return "auth/new_password"
        case .resendCode:
            return "auth/resend_code"
        case .logout:
            return "auth/logout"
         
        }
    }
    
    var method: HTTPMethod  {
        switch self {
        case .register,.login,.activeAccount, .forgetPass, .newPassword, .resendCode , .logout:
            return .post
        }
    }
    
    var parameters: Parameters?  {
        switch self {
            
        case .register( let username , let mobile , let email , let city_id , let password , let device_id):
            return ["username" : username ,"mobile" : mobile,"email" : email ,"city_id" : city_id ,"password" : password , "device_id" : device_id]
            
        case .login(let mobile , let password ,let device_id):
            return ["mobile":mobile , "password":password , "device_id":device_id]
            
        case .activeAccount( let code ,let device_id):
            return ["code":code , "device_id":device_id]
            
        case .forgetPass(let mobile):
            return ["mobile" : mobile]
            
        case .newPassword(let new_password):
            return ["new_password" : new_password]
            
        case .resendCode(let mobile):
            return ["mobile" : mobile]
            
        case .logout():
            return [:]
     
        }
    }
}

