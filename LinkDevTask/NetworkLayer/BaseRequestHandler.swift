//
//  BaseRequestHanlder.swift
//  PopNetwork
//
//  Created by Khaled on 6/9/18.
//  Copyright © 2018 Khaled. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


typealias JSONTaskCompletionHandler<T> = ((NetworkResponse<T>) -> Void)?

protocol BaseRequestHandler : BaseResponseHandler {
    func send<T: Codable>(_ decoder: T.Type, completion: JSONTaskCompletionHandler<T>)
}

extension BaseRequestHandler where Self: BaseRequestBuilder {
    
    func send<T: Codable>(_ decoder: T.Type, completion: JSONTaskCompletionHandler<T>) {
        request(self).validate().responseData {(response) in
            print("----------------\(response)")
            self.handleResponse(response, completion: completion)
        }
    }


}
