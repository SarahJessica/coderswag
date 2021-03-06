//
//  DataService.swift
//  coderswag
//
//  Created by Jess Leivers on 17/08/2017.
//  Copyright © 2017 Sarah Jessica London. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    
    private let hats = [
        Product(title: "Coderswag Logo Graphic Beanie", price: "£12", imageName: "hat01.png"),
        Product(title: "Coderswag Logo Hat Black", price: "£18", imageName: "hat02.png"),
        Product(title: "Coderswag Logo Hat White", price: "£18", imageName: "hat03.png"),
        Product(title: "Coderswag Logo Hat Snapback", price: "£13", imageName: "hat04png")
    ]
    
    private let hoodies = [
        Product(title: "Coderswag Logo Hoodie Grey", price: "£35", imageName: "hoodie01.png"),
        Product(title: "Coderswag Logo Hoodie Red", price: "£35", imageName: "hoodie02.png"),
        Product(title: "Coderswag Logo Grey", price: "£35", imageName: "hoodie03.png"),
        Product(title: "Coderswag Logo Black", price: "£35", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Coderswag Logo Shirt Black", price: "£15", imageName: "shirt01.png"),
        Product(title: "Coderswag Badge Shirt Light Grey", price: "£15", imageName: "shirt02.png"),
        Product(title: "Coderswag Logo Shirt Red", price: "£15", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "£19", imageName: "shirt04.png"),
        Product(title: "KF Studio Black", price: "£15", imageName: "shirt05.png")
    ]

    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories 
        
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getDigitalGoods()
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
