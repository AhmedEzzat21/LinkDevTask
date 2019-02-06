//
//  HomeCell.swift
//  LinkDevTask
//
//  Created by Ahmed on 2/5/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    
    @IBOutlet weak var homeImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(homeModel: HomeModel) {
        titleLbl.text = homeModel.titleEN
        descriptionLbl.text = homeModel.brief
    }
    
}

