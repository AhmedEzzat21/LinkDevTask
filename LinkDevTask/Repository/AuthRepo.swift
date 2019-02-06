//
//  UserRepo.swift
//  BokehStote
//
//  Created by Khaled on 7/3/18.
//  Copyright © 2018 Khaled. All rights reserved.
//

import Foundation

struct AuthRepo {
    
    static func login(mobile:String, password:String, device_id : String , completionBlock:@escaping (_ response: DefaultResponse<UserModel>)->Void) {
        Loader.show()
        AuthEndPoint.login(mobile: mobile, password: password, device_id: device_id).send(DefaultResponse<UserModel>.self) { (response) in
            Loader.hide()
            switch response {
            case .error(_) : break;
            case .success(let value) : completionBlock(value)
            }
        }
    }
    
    static func forgetPassword(mobile:String,completionBlock:@escaping (_ response:DefaultResponse<String>)->Void) {
        Loader.show()
        AuthEndPoint.forgetPass(mobile: mobile).send(DefaultResponse<String>.self) { (response) in
            Loader.hide()
            switch response {
            case .error(_) : break;
            case .success(let value) : completionBlock(value)
            }
        }
    }
    
    static func activeAccount(code:String,device_id:String,completionBlock:@escaping (_ response:DefaultResponse<UserModel>)->Void) {
        Loader.show()
        AuthEndPoint.activeAccount( code: code, device_id: device_id).send(DefaultResponse<UserModel>.self) { (response) in
            Loader.hide()
            switch response {
            case .error(_) : break;
            case .success(let value) : completionBlock(value)
            }
        }
    }
    
    static func newPassword(new_password:String, completionBlock:@escaping (_ response: DefaultResponse<UserModel>) -> Void) {
        Loader.show()
        AuthEndPoint.newPassword(new_password: new_password).send(DefaultResponse<UserModel>.self) { (response) in
            Loader.hide()
            switch response {
            case .error(_) : break;
            case .success(let value) : completionBlock(value)
            }
        }
    }
    
    static func registerNewUSer(userName:String, mobileNumber : String , email : String , cityId : Int , password : String , deviceId : String , completionBlock:@escaping (_ response: DefaultResponse<UserModel>) -> Void) {
        Loader.show()
        AuthEndPoint.register(username: userName, mobile: mobileNumber, email: email, city_id: cityId, password: password, device_id: deviceId).send(DefaultResponse<UserModel>.self) { (response) in
            Loader.hide()
            switch response {
            case .error(_) : break;
            case .success(let value) : completionBlock(value)
            }
        }
    }
    
}
