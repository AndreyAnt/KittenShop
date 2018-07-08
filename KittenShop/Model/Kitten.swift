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
    public let pedigree: Bool
    public let image: UIImage
    
    public init(name: String, birthday: Date, breed: Breed, pedigree: Bool, image: UIImage) {
        self.name = name
        self.birthday = birthday
        self.breed = breed
        self.pedigree = pedigree
        self.image = image
    }
}
