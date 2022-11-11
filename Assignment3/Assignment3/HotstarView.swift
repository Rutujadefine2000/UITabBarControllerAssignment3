//
//  HotstarView.swift
//  Assignment3
//
//  Created by Brahmastra on 07/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class HotstarView: UIViewController {
    
   let webSeriesList:[String]=["Criminal Justice","Special Ops","Hostages","Aarya","Grahan"]
    @IBOutlet weak var myTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        myTableView.tableFooterView = UIView()
    }
    


}
extension HotstarView: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return webSeriesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = webSeriesList[indexPath.row]
        return cell
    }
    
    
}
