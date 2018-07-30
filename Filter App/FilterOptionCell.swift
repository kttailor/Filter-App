//
//  FilterOptionCell.swift
//  Filter App
//
//  Created by apple on 23/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class FilterOptionCell: UITableViewCell {

    @IBOutlet weak var selectedCountLbl: UILabel!
    @IBOutlet weak var optionName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

 func populateCell(value:FilterOption){
    
    optionName.text = value.name
    if value.selectionCount == 0 {
        selectedCountLbl.text = ""
    }else{
         selectedCountLbl.text = "\(value.selectionCount)"
    }
   
    
    }

}
