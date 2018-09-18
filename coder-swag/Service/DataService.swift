//
//  DataService.swift
//  coder-swag
//
//  Created by ARATEL on 9/18/18.
//  Copyright © 2018 ARATEL. All rights reserved.
//

import Foundation

class DataService {
    
    // *** we create a singelton
    static let instance = DataService()
    
    // Array list of category -> categories is a array of type Category
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
}
