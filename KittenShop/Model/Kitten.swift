//
//  Kitten.swift
//  KittenShop
//
//  Created by Andrey Antropov on 06.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import UIKit

public class Kitten {
    public enum Breed {
        case persian
        case siamese
        case britishShorthair
        case maineCoon
        case sphynx
    }
    
    public let name: String
    public let birthday: Date
    public let breed: Breed
    public let image: UIImage
    public let price: Int
    
    public init(name: String, birthday: Date, breed: Breed, image: UIImage, price: Int) {
        self.name = name
        self.birthday = birthday
        self.breed = breed
        self.image = image
        self.price = price
    }
}
