//
//  HomeVC.swift
//  LinkDevTask
//
//  Created by Ahmed on 2/5/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeModels: [HomeModel] = []
    let nib = UINib(nibName: "HomeCell", bundle: nil)
    
    @IBOutlet weak var homeTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        homeTable.delegate = self
        homeTable.dataSource = self
        homeTable.register(nib, forCellReuseIdentifier: "HomeCell")
    }
    
}

extension HomeVC : UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return homeModels.count
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeCell
        //        cell.configure(homeModel: homeModels[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //getting the index path of selected row
        
        self.navigationController?.pushViewController(StoryBoardManager<DescriptionVC>.Main.Navigate(), animated: true)
        
    }
}

