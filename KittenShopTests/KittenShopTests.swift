//
//  KittenShopTests.swift
//  KittenShopTests
//
//  Created by Andrey Antropov on 06.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import XCTest
@testable import KittenShop

class KittenShopTests: XCTestCase {
    
    var kittenShop30rateViewModel: KittenShopViewModel!
    
    override func setUp() {
        super.setUp()
        
        kittenShop30rateViewModel = KittenShopViewModel(rate: 0.3)
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testPriceLabel() {
        
        XCTAssertEqual(kittenShop30rateViewModel.priceText, "1300₽")
    }
    
    func testAgeLabel() {
        XCTAssertEqual(kittenShop30rateViewModel.ageText, "1 month 14 days old")
    }
}
