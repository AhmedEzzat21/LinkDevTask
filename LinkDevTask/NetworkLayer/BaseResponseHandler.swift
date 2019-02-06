//
//  BaseResponseHandler.swift
//  PopNetwork
//
//  Created by Khaled on 6/9/18.
//  Copyright © 2018 Khaled. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol BaseResponseHandler {
    func handleResponse<T: Codable>(_ response: DataResponse<Data>, completion: JSONTaskCompletionHandler<T>)
}

extension BaseResponseHandler {
    
    func handleResponse<T: Codable>(_ response: DataResponse<Data>, completion: JSONTaskCompletionHandler<T>) {
        switch response.result {
        case .failure(let error):
            completion?(NetworkResponse<T>.error(error.localizedDescription))
            print("Connection Error 👽👽👽👽 \(error.localizedDescription)")
        case .success(let value):
                handleResponseData(value, completion: completion)
        }
    }
    
    private func handleResponseData<T: Codable>(_ data:Data,completion: JSONTaskCompletionHandler<T>) {
        do {
         print("Response Data 🤪🤪🤪🤪  \(JSON(data))")
            let obj = try JSONDecoder().decode(T.self, from: data)
            completion?(NetworkResponse<T>.success(obj))
            
        } catch let jsonError {
            print("JsonSerlization Error 😱😱😱😱😱 \(jsonError.localizedDescription)")
            completion?(NetworkResponse<T>.error(jsonError.localizedDescription))
        }
    }
}
