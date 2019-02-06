//
//  GeneralModel.swift
//  LinkDevTask
//
//  Created by Ahmed on 2/5/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import Foundation
import UIKit
struct GeneralModel<T: Codable>: Codable {
    let data: [T]?
    let isSucceed: Bool?
    let messages: [String]?
    let messagesCode: Int?
    
    enum CodingKeys: String, CodingKey {
        case data = "Data"
        case isSucceed = "IsSucceed"
        case messages = "Messages"
        case messagesCode = "MessagesCode"
    }
}

struct ServiceDetails {
    let title:String?
    let description:String?
    let image:UIImage?
}



