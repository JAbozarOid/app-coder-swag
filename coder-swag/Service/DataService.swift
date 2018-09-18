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
    
    // for each of category we have some products
    private let hats = [
        Product(title: "Devslopes Logo Hat Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$22", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Grey", price: "$22", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$20", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Grey", price: "$32", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$22", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Grey", price: "$22", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt Black", price: "$20", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo Shirt White", price: "$27", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]() // *** in swift when we want to define an array of empty we should declare the type of array
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    // beacuse we have four array of product we should write a method with switch
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
           return getShirts()
        case "HOODIES":
           return getHoodies()
        case "HATS":
           return getHats()
        case "DIGITAL":
           return getDigitalGoods()
        default:
           return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
