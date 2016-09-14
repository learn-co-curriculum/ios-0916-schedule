//
//  ViewController.swift
//  ArrayPractice
//
//  Created by Flatiron School on 9/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array: [String]
        var array3 = [String]()
//        print(array3)
        let array2 = [0.0,1.0,2.0]
        
        var students = [
            "Allan, Missy",
            "An, luna",
            "Deans, Robert",
            "Lawrence, Tameika",
            "belleza, jhantelle",
            "Staton, Michelle",
            "Matos, Joyce",
            "Medvedev, Alexey",
            "Melendez, Victoria",
            "Milaneh, Rama",
            "Miller, Eli",
            "San Miguel, Arvin",
            "Wiggins, Tanira",
            "Neff, David",
            "Young, Michael ",
            "Park, Marie ",
            "Schweiger, Jacqueline",
            "Huang, Joanna",
            "Young, Michael"]
        
        students.append("susan")
        //                print(students)
        
        students.removeLast()
        //                print(students)
        
        students.removeAtIndex(students.count-1)
        //                print(students)
        //
        students.insert("susan", atIndex: 0)
        //        print("\n\n\n\n\n\(students)")
        
        let isThere = students.contains("susan")
        //        print("\n\n\n\n\n\(isThere)")
        
        let instructors = ["joel","ian","johann", "jim"]
        
        let wholeClass = [students, instructors]
        
//        print(wholeClass.count)
        
        let combined = students + instructors
        //        print(combined.count)
        //
        //        print("\n\n\n\n\n\(students)")
        //        print("\n\n\n\n\n\(instructors)")
        //
        //        let hasOne = array2.contains(1)
        //        print(hasOne)
        
//        print(students.count)
        
        let randomindex = arc4random_uniform(UInt32(students.count))
        
        let removed = students.removeAtIndex(Int(randomindex))
        
        //        print(removed)
        //        print(students.count)
        
        //long way to remove a specific name
        for name in students{
            
            
            if name == "susan"{
                
                let index = students.indexOf("susan")
                guard let indice = index else{break}
                
                students.removeAtIndex(indice)
            }
        }
        
        //quicker way with enumeration
        for (index, name) in students.enumerate(){
            
            if name == "susan"{
                
                
                let removal = students.removeAtIndex(index)
                
                print(removal)//prints only if the condition becomes true
            }
            
            //print(name) //prints everytime you go into loop
        }
        //print(students)
    }
}

