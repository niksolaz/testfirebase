//
//  TodoItem.swift
//  testfirebase
//
//  Created by Nicola Solazzo on 28/11/17.
//  Copyright © 2017 Nicola Solazzo. All rights reserved.
//

import Foundation
class TodoItem {
    var name:String
    var completed:Bool
    var quantity:String
    init(name:String, completed:Bool, quantity:String) {
        self.name = name
        self.completed = completed
        self.quantity = quantity
    }
}
