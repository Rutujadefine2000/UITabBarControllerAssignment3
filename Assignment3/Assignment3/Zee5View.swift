//
//  Zee5View.swift
//  Assignment3
//
//  Created by Brahmastra on 07/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class Zee5View: UIViewController {
    
    let webSeriesList:[String]=["poison 2","Abhay 2","Dark 7 White","State of Seige 9/11","Kaali"]

    @IBOutlet weak var myTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTableView.tableFooterView = UIView()
    }
}
extension Zee5View: UITableViewDataSource,UITableViewDelegate{
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return webSeriesList.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = webSeriesList[indexPath.row]
    return cell
}
}
