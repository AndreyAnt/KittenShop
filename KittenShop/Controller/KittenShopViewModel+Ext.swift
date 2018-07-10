//
//  KittenShopViewModel+Ext.swift
//  KittenShop
//
//  Created by Andrey Antropov on 09.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import Foundation

extension KittenShopViewModel {
    func monitorPeopleOnline() {
        DispatchQueue.main.asyncAfter(deadline: .now() +  drand48()*5.0) { [weak self] in
            self?.peopleOnline.value += Int(arc4random_uniform(3))
            self?.monitorPeopleOnline()
        }
        
    }
}
