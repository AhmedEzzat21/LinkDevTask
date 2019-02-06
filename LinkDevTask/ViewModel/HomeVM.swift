//
//  HomeVM.swift
//  LinkDevTask
//
//  Created by Ahmed on 2/5/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import Foundation
class HomeVM {
    typealias OperationSuccess = ((_ success:Bool)->Void)
    var operationSucc : OperationSuccess?
    var homeModels: [HomeModel] = []

    
    func getAllHomeCategories()  {
        GeneralRepo.getHomeList { (response) in
            print("💀💀💀💀💀response is : \(response) ")
            self.homeModels = response.data ?? []
            self.operationSucc?(true)
        }
    }
}
