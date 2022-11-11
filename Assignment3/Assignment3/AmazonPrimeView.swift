//
//  AmazonPrimeView.swift
//  Assignment3
//
//  Created by Brahmastra on 07/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class AmazonPrimeView: UIViewController {
    let webSeriesList:[String]=["Mirzapur","Panchayat","Inside Edge","Breathe","Made in Heaven"]
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.tableFooterView = UIView()
       
    }
}
extension AmazonPrimeView: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webSeriesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = webSeriesList[indexPath.row]
        return cell
    }
    
    
}
