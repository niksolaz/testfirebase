//
//  ViewController.swift
//  testfirebase
//
//  Created by Nicola Solazzo on 23/11/17.
//  Copyright © 2017 Nicola Solazzo. All rights reserved.
//

import UIKit
import Firebase
import WebKit

class ViewController: UIViewController {
    
    let todolistRef: DatabaseReference = Database.database().reference().child("todolist")
     
    override func viewDidLoad() {
        super.viewDidLoad()
        //loginAnonym()
    
        var item = todolistRef.child("zucchero")
        var values:[String: Any] = ["completed":true, "name":"zucchero", "quantity":"2kg"]
        item.setValue(values)
        print("localize error ViewController 1")
        item = todolistRef.child("sapone")
        values = ["completed":true, "name":"sapone", "quantity":1]
        item.setValue(values)
        print("localize error ViewController 2")
        print(todolistRef)
        
    }
    
    func loginAnonym() {
        Auth.auth().signInAnonymously { (User, Error) in
            if let error = Error {
                print("localize error 4")
                print(error)
            } else {
                if let user = User {
                    print("localize error 5")
                    print(user.uid)
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

