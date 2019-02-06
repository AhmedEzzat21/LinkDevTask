//
//  NetworkResponse.swift
//  PopNetwork
//
//  Created by Khaled on 6/12/18.
//  Copyright © 2018 Khaled. All rights reserved.
//

import Foundation

enum NetworkResponse<T> {
    case success(T), error(String?)
}
