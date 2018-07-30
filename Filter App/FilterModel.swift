//
//  FilterModel.swift
//  Filter App
//
//  Created by apple on 23/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import Foundation


class FilterOption{
    
    var name = String()
    var values = [FilterValue]()
    var selectionCount : Int{
        return values.filter{$0.isSelected}.count
    }
    
    init(filtername:String,value:[String]) {
        name = filtername
        for i in 0..<value.count{
            let filterValue = FilterValue(valueName: value[i])
            values.append(filterValue)
        }
    }
}

class FilterValue{
    
    var name = String()
    var isSelected = false
    
    init(valueName:String){
        name = valueName
    }
}
