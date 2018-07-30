//
//  ViewController.swift
//  Filter App
//
//  Created by apple on 23/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,selectionDelegate {
    
    @IBOutlet weak var filterValueTable: FilterValueTable!
    @IBOutlet weak var filterOptionsTable: FilterOptionsTable!
    var filterData = [["Brands":["Levis","Wrangler","Calvin Klein","John Players","Spy Kar"]],
                      ["Size":["S","M","L","XL","XXL"]],
                      ["Color":["Blue","Black","White","Sky Blue","Dark Blue"]],
                      ["Price":["Less Than","1000-3000","3000-5000","Above 5000"]]]
    
    var filterOptions = [FilterOption]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        populateFilterData()
        filterOptionsTable.filteroptions = filterOptions
        filterValueTable.filterValues = filterOptions[0].values
        filterValueTable.selDelgate = self
        filterOptionsTable.selDelegate = self
    
    }
    
    func didSelect(index:Int){
        filterValueTable.filterValues = filterOptions[index].values
    }
    
    func valueDidSelect(index:Int){
        filterOptionsTable.reloadData()
    }
    

    func populateFilterData(){
    
        for i in 0..<filterData.count{
            
            let filterDictionary = filterData[i]
            
            for (key,value) in filterDictionary{
                let options = FilterOption(filtername:key,value:value)
                filterOptions.append(options)
            }
        }
    
        
    }
  


}

