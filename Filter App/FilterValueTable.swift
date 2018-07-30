//
//  FilterValueTable.swift
//  Filter App
//
//  Created by apple on 23/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit



class FilterValueTable: UITableView,UITableViewDelegate,UITableViewDataSource {
    
    var selDelgate: selectionDelegate?
    var filterValues = [FilterValue](){
        didSet{
            reloadData()
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterValues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FilterValueCell") as! FilterValueCell
        cell.populateCell(value: filterValues[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let value = filterValues[indexPath.row]
        
        if value.isSelected{
            value.isSelected = false
        }else{
            value.isSelected = true
        }
        reloadData()
        selDelgate?.valueDidSelect(index: indexPath.row)
    }
   
    override func awakeFromNib() {
        self.delegate =  self
        self.dataSource =  self
        self.tableFooterView =  UIView()
    }

}
