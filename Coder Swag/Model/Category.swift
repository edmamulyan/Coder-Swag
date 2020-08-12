//
//  Category.swift
//  Coder Swag
//
//  Created by Paul Franco on 8/11/20.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
