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
        
        //        var first: MyClass? = MyClass()
        //        var second = first
        //        var third = first
        //
        //        third = nil
        //        second = nil
        //        first = nil
        
        
        //        var father: Parent?
        //
        //        father = Parent()
        //        father = nil
        
        var person: Person?
        var myDeveloperJob: Job?
        
        person = Person()
        myDeveloperJob = Job()
        
        person?.myJob = myDeveloperJob
        myDeveloperJob?.person = person
        
        person = nil
        myDeveloperJob = nil
        
        
    }
    
    
}

//class MyClass {
//
//    var myInt = 10
//
//    init() {
//        print("MyClass initiliazes....")
//    }
//
//    deinit {
//        print("MyClass will be deallocated...")
//    }
//}


//class Child {
//    deinit {
//        print("Child get deinit...")
//    }
//}
//
//class Parent {
//
//    var child = Child()
//
//    deinit {
//        print("Parent get deinited....")
//    }
//}


class Person {
    var myJob: Job? = nil
    
    init() {
        print("person initiated...")
    }
    
    deinit {
        print("Person class deinit....")
    }
}

class Job {
   weak var person: Person? = nil
    
    init() {
        print("Job initiated...")
    }
    
    deinit {
        print("Job class deinit...")
    }
}
