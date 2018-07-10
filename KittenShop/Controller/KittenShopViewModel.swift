//
//  KittenShopViewModel.swift
//  KittenShop
//
//  Created by Andrey Antropov on 09.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import UIKit

public class KittenShopViewModel {
    
    //MARK: - Stored Properties
    private(set) var peopleOnline: Box<Int> = Box(1)
    private let kittens: [Kitten]
    private let rate: Float
    private var index: Int = 0 {
        didSet {
            delegate?.currentKittenChanged()
        }
    }
    private let calendar: Calendar
    public weak var delegate: KittenShopDelegate?
    
    //MARK: - Initializer
    public init(rate: Float) {
        self.rate = rate
        self.kittens = KittensDatabase.testData()
        self.calendar = Calendar(identifier: .gregorian)
        monitorPeopleOnline()
    }
    
    //MARK: - Computed properties
    public var name: String {
        return kittens[index].name
    }
    
    public var image: UIImage {
        return kittens[index].image
    }
    
    public var ageText: String {
        let today = calendar.startOfDay(for: Date())
        let birthday = calendar.startOfDay(for: kittens[index].birthday)
        let components = calendar.dateComponents([.day, .month], from: birthday, to: today)
        
        var ageText = ""
        
        if let daysOld = components.day, daysOld > 0 {
            if daysOld == 1 {
                ageText = "\(daysOld) day " + ageText
            } else {
                ageText = "\(daysOld) days " + ageText
            }
        }
        if let monthsOld = components.month, monthsOld > 0 {
            if monthsOld == 1 {
                ageText = "\(monthsOld) month " + ageText
            } else {
                ageText = "\(monthsOld) months " + ageText
            }
        }
        if ageText.isEmpty {
            return "Couldn't get age"
        } else {
            return ageText + "old"
        }
    }
    
    public var priceText: String {
        return String(format: "%.0f", (Float(kittens[index].price) * (1 + rate))) + "₽"
    }
}

//MARK: - User Interaction Handling
extension KittenShopViewModel {
    public func swipeLeft() {
        if index == 0 {
            index = kittens.count - 1
        } else {
            index -= 1
        }
    }
    
    public func swipeRight() {
        if index == kittens.count - 1 {
            index = 0
        } else {
            index += 1
        }
    }
}

//MARK: - View Configuring
extension KittenShopViewModel {
    public func configure(_ view: KittenView) {
        view.nameLabel.text = name
        view.imageView.image = image
        view.ageLabel.text = ageText
        view.priceLabel.text = priceText
    }
}

//MARK: - Delegate Protocol
public protocol KittenShopDelegate: class {
    func currentKittenChanged()
}
