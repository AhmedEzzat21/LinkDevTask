//
//  AppRefrence.swift
//  Time4Notes
//
//  Created by Khaled on 9/12/17.
//  Copyright © 2017 codex. All rights reserved.
//

import Foundation
import Alamofire

struct AppRefrence {
    static let baseUrl = "https://dhcr.gov.ae/MobileWebAPI/api/"
    
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate

    static var currentVC:UIViewController? {
        return appDelegate.window?.rootViewController
    }

}
