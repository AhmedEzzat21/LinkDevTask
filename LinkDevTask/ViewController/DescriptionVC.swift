//
//  DescriptionVC.swift
//  LinkDevTask
//
//  Created by Ahmed on 2/5/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit

class DescriptionVC: UIViewController {
    
    
    @IBOutlet weak var descriptionCollectionViewHeight: NSLayoutConstraint!
    @IBOutlet weak var descriptionCollectionView: UICollectionView!{
        didSet {
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = 0
            let frame=UIScreen.main.bounds;
            layout.itemSize = CGSize(width:(frame.width)-30,height:150);
            self.descriptionCollectionView.collectionViewLayout = layout
            self.descriptionCollectionView.reloadData()
        }
    }
    var homeModel:HomeModel!
    var serviceDetailsDataSource :[ServiceDetails]?
    
    @IBAction func apply_btn(_ sender: Any) {
        let alert = UIAlertController(title: "Success", message: "your apply is success", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serviceDetailsDataSource = [ServiceDetails(title:"Description",description:homeModel.descriptionEN,image:#imageLiteral(resourceName: "requireddoc")),
                                    ServiceDetails(title:"Prerequisities",description:homeModel.prerequisitesEN,image:#imageLiteral(resourceName: "prerequisites")),
                                    ServiceDetails(title:"Required Document",description:homeModel.requiredDocumentsEN,image:#imageLiteral(resourceName: "requireddoc")),
                                    ServiceDetails(title:"Fees",description:homeModel.feesEN,image:#imageLiteral(resourceName: "fees")),
                                    ServiceDetails(title:"Time Frame",description:homeModel.descriptionEN,image:#imageLiteral(resourceName: "time"))]
        
        
        
    }
    
    
    
}

extension DescriptionVC : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return serviceDetailsDataSource?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let id = "descriptionCollectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: id, for: indexPath)as!serviceDetailsCollectionViewCell
        let item = serviceDetailsDataSource?[indexPath.row]
        cell.setServiceDetails(serviceDetailsTitleLabel:item?.title! ?? "", serviceDetailsDescription: item?.description! ?? "", serviceDetailsImage: (item?.image!)! )
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        descriptionCollectionViewHeight.constant = descriptionCollectionView.contentSize.height
        descriptionCollectionView.layoutIfNeeded()
        cell.alpha = 0
        cell.layer.transform = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        UIView.animate(withDuration: 1.0){
            cell.alpha = 1
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
    
}
