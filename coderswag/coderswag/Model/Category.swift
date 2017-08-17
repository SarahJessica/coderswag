//
//  Category.swift
//  coderswag
//
//  Created by Jess Leivers on 17/08/2017.
//  Copyright © 2017 Sarah Jessica London. All rights reserved.
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
