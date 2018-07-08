//
//  KittenViewModel.swift
//  KittenShop
//
//  Created by Andrey Antropov on 06.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import UIKit

public class KittenViewModel {
    private let kitten: Kitten
    private let calendar: Calendar
    
    public init(kitten: Kitten) {
        self.kitten = kitten
        self.calendar = Calendar(identifier: .gregorian)
    }
    
    public var name: String {
        return kitten.name
    }
    
    public var image: UIImage {
        return kitten.image
    }
    
    public var ageText: String {
        let today = calendar.startOfDay(for: Date())
        let birthday = calendar.startOfDay(for: kitten.birthday)
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
        switch kitten.breed {
        case .britishShorthair:
            return !kitten.pedigree ? "2000₽" : "4000₽"
        case .persian:
            return !kitten.pedigree ? "1000₽" : "3000₽"
        case .siamese:
            return !kitten.pedigree ? "1500₽" : "3500₽"
        case .sphynx:
            return !kitten.pedigree ? "5000₽" : "7500₽"
        case .maineCoon:
            return !kitten.pedigree ? "9999₽" : "13789₽"
        }
    }
}

extension KittenViewModel {
    public func configure(_ view: KittenView) {
        view.nameLabel.text = name
        view.imageView.image = image
        view.ageLabel.text = ageText
        view.priceLabel.text = priceText
    }
}
