//
//  DataService.swift
//  Coder Swag
//
//  Created by Paul Franco on 8/11/20.
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
        Product(title: "Devslopes Logo Graphic Beanie", price: "18.00", imageName: "hat01.png"),
        Product(title: "Decslopes Logo Hat Black", price: "22.00", imageName: "hat02.png"),
        Product(title: "Decslopes Logo Hat White", price: "24.00", imageName: "hat03.png"),
        Product(title: "Decslopes Logo Hat Snapback", price: "20.00", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Graphic Hoodie Gray", price: "18.00", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Graphic Hoodie Red", price: "22.00", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Graphic Hoodie Gray", price: "24.00", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Graphic Hoodie Black", price: "20.00", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "18.00", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "22.00", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Light Gray", price: "24.00", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt Gray", price: "20.00", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "20.00", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forcategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalProducts()
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
    
    func getDigitalProducts() -> [Product] {
        return digitalGoods
    }
}
