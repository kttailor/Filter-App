//
//  FilterOptionsTable.swift
//  Filter App
//
//  Created by apple on 23/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

public protocol selectionDelegate {
    func didSelect(index:Int)
    func valueDidSelect(index:Int)
}

class FilterOptionsTable: UITableView,UITableViewDataSource,UITableViewDelegate {
    
    var selDelegate : selectionDelegate?

    var filteroptions = [FilterOption](){
        didSet{
            reloadData()
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return   filteroptions.count
    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FilterOptionCell") as! FilterOptionCell
        print("sss")
        cell.populateCell(value: filteroptions[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selDelegate?.didSelect(index: indexPath.row)
    }
    
    override func awakeFromNib() {
        self.delegate =  self
        self.dataSource =  self
         self.tableFooterView =  UIView()
    }

}
