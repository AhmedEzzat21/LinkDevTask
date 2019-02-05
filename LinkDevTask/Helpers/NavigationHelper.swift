//
//  HelperEnums.swift
//  WorldOfDesign
//
//  Created by hassan on 1/4/19.
//  Copyright © 2019 hassan. All rights reserved.
//

import Foundation
import UIKit

enum StoryBoardManager<T:UIViewController> : String {
    case Main
 
    func Navigate() -> T {
        return UIStoryboard.init(name: self.rawValue, bundle: Bundle.main).instantiateViewController(withIdentifier: "\(T.self)") as! T
    }
}




