//
//  
//
//
//  Created by Ahmed on 2/5/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import Foundation

protocol generalApiProtocol  {
//    func uploadMultiPart<T: Codable>(completion: DefaultResponse<[ListModel]>)
}

struct GeneralRepo {
    
    static func getHomeList(completionBlock:@escaping (_ response:GeneralModel<HomeModel>)->Void) {
        Loader.show()
        GeneralEndPoints.getHomeList(pageSize: 10, pageIndex: 1, departmentId: 2).send(GeneralModel<HomeModel>.self) { (response) in
            Loader.hide()
            switch response {
            case .error(_) : break;
            case .success(let value) : completionBlock(value)
            }
        }
    }
}

