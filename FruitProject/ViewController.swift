//
//  ViewController.swift
//  FruitProject
//
//  Created by Apple MacBook Pro on 1/23/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var name:[String] = ["Sun Flower", "Banana","China Rose","Rose","Mango"]
    var age:[String] = ["1","2","3","4","5"]
    var images = ["images","images1","images2","images3","images4"]
    
    @IBOutlet weak var FruitTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        FruitTable.delegate = self
        FruitTable.dataSource = self
        
        self.FruitTable.rowHeight = 250.0
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item") as! ItemTableViewCell
        
        cell.names.text = name[indexPath.row]
        cell.ages.text = age[indexPath.row]
        cell.Itemimg.image = UIImage(named: images[indexPath.row])
        
        return cell
        
    }
    
    
}

