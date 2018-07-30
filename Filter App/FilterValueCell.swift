//
//  FilterValueCell.swift
//  Filter App
//
//  Created by apple on 23/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class FilterValueCell: UITableViewCell {

    @IBOutlet weak var cucLabel: UIImageView!
    @IBOutlet weak var valueName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func populateCell(value:FilterValue){
        valueName.text = value.name
        
        if value.isSelected{
            cucLabel.image = UIImage(named:"check")
        }else{
            cucLabel.image = UIImage(named:"uncheck")
        }
    }

   

}
