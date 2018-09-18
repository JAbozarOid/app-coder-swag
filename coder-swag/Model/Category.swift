//
//  Category.swift
//  coder-swag
//
//  Created by ARATEL on 9/18/18.
//  Copyright © 2018 ARATEL. All rights reserved.
//

import Foundation

struct Category{
    
    // somthing like setter and getter in java
   private(set) public var title: String
   private(set) public var imageName: String
    
    // constructor
    init(title: String , imageName: String){
        
        // self means something like "this"
        self.title = title
        self.imageName = imageName
    }
}
