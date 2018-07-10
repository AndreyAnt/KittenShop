//
//  Box.swift
//  KittenShop
//
//  Created by Andrey Antropov on 09.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import Foundation

public class Box<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}


