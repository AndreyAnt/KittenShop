//
//  KittenEntities.swift
//  KittenShop
//
//  Created by Andrey Antropov on 06.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import UIKit

struct KittensDatabase {
    
    //MARK: - Returning fake static data
    public static func testData() -> [Kitten] {
        let data = [
            Kitten(name: "Муська",
                   birthday: Date(timeIntervalSinceNow: ( -60 * 60 * 24 * 45 )),
                   breed: .siamese,
                   image: UIImage(named: "siamese")!,
                   price: 1000),
            Kitten(name: "Джек",
                   birthday: Date(timeIntervalSinceNow: ( -60 * 60 * 24 * 55 )),
                   breed: .britishShorthair,
                   image: UIImage(named: "british")!,
                   price: 3000),
            Kitten(name: "Омяу Хайям",
                   birthday: Date(timeIntervalSinceNow: ( -60 * 60 * 24 * 35 )),
                   breed: .persian,
                   image: UIImage(named: "persian")!,
                   price: 2500),
            Kitten(name: "Анубис",
                   birthday: Date(timeIntervalSinceNow: ( -60 * 60 * 24 * 10 )),
                   breed: .sphynx,
                   image: UIImage(named: "sphynx")!,
                   price: 5000),
            Kitten(name: "Борис",
                   birthday: Date(timeIntervalSinceNow: ( -60 * 60 * 24 * 20 )),
                   breed: .unknown,
                   image: UIImage(named: "unknown1")!,
                   price: 9000),
            Kitten(name: "Степа",
                   birthday: Date(timeIntervalSinceNow: ( -60 * 60 * 24 * 10 )),
                   breed: .unknown,
                   image: UIImage(named: "unknown2")!,
                   price: 3000),
            Kitten(name: "Пушок",
                   birthday: Date(timeIntervalSinceNow: ( -60 * 60 * 24 * 12 )),
                   breed: .unknown,
                   image: UIImage(named: "unknown3")!,
                   price: 2000)
                    ]
        
        return data
    }
}
