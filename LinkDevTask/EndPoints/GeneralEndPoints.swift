//
//  GeneralEndPoints.swift
// 
//
//  Created by Ahmed on 2/5/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//



import Foundation
import Alamofire



enum GeneralEndPoints : BaseRequestBuilder {
    
    case getHomeList (pageSize : Int , pageIndex : Int , departmentId : Int)
   
    var path: String {
        switch self {
        case .getHomeList:
            return "Common/ServiceCatalogue/GetDepartmentServices"
        }
    }
    
    var method: HTTPMethod  {
        switch self {
        case .getHomeList :
            return .post
        }
    }
    
    var parameters: Parameters?  {
        switch self {
        case .getHomeList(let pageSize , let pageIndex , let departmentID):
            return ["PageSize" : pageSize , "PageIndex" : pageIndex , "DepartmentID" : departmentID ]
        }
    }
}
