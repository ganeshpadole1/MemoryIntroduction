//
//  ViewController.swift
//  MemoryIntroduction
//
//  Created by ganesh padole on 25/01/20.
//  Copyright © 2020 ganesh padole. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var first: MyClass? = MyClass()
        var second = first
        var third = first
        
        third = nil
        second = nil
        first = nil
    }


}

class MyClass {
    
    var myInt = 10
    
    init() {
        print("MyClass initiliazes....")
    }
    
    deinit {
        print("MyClass will be deallocated...")
    }
}
