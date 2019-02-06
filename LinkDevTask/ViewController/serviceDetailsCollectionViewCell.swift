//
//  serviceDetailsCollectionViewCell.swift
//  LinkDevTask
//
//  Created by Ahmed on 2/6/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit

class serviceDetailsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var serviceDetailsTitleLabel: UILabel!
    @IBOutlet weak var serviceDetailsDescription: UIWebView!
    @IBOutlet weak var serviceDetailsImage: UIImageView!
    
    override func awakeFromNib() {
        serviceDetailsDescription.scrollView.showsHorizontalScrollIndicator = false
        serviceDetailsDescription.scrollView.showsVerticalScrollIndicator = false
    }

    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        frame.size.height = ceil(size.height)
        layoutAttributes.frame = frame
        return layoutAttributes
        
    }
    
    
    func setServiceDetails(serviceDetailsTitleLabel:String,serviceDetailsDescription:String,serviceDetailsImage:UIImage){
        self.serviceDetailsTitleLabel.text = serviceDetailsTitleLabel
        self.serviceDetailsDescription.loadHTMLString(serviceDetailsDescription, baseURL: nil)
        self.serviceDetailsImage.image = serviceDetailsImage
        
        
    }
    
}
