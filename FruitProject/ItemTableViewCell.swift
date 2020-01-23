//
//  ItemTableViewCell.swift
//  FruitProject
//
//  Created by Apple MacBook Pro on 1/23/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Itemimg: UIImageView!
    @IBOutlet weak var names: UILabel!
    @IBOutlet weak var ages: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
