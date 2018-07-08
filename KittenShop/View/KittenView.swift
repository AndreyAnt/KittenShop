//
//  KittenView.swift
//  KittenShop
//
//  Created by Andrey Antropov on 06.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import UIKit

public class KittenView: UIView {

    
    public let imageView: UIImageView
    public let nameLabel: UILabel
    public let ageLabel: UILabel
    public let priceLabel: UILabel

    public override init(frame: CGRect) {
        super.init(frame: frame)

    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSubviews() {
        
        var childFrame = CGRect(x: 0, y: frame.height - 38, width: frame.width, height: 30)
        
        priceLabel = UILabel(frame: childFrame)
        priceLabel.textAlignment = .center
        
        childFrame.origin.y -= childFrame.height
        ageLabel = UILabel(frame: childFrame)
        ageLabel.textAlignment = .center
        
        childFrame.origin.y -= childFrame.height
        nameLabel = UILabel(frame: childFrame)
        nameLabel.textAlignment = .center
        
        childFrame.size.height = childFrame.origin.y
        childFrame.origin.y = 8
        imageView = UIImageView(frame: childFrame)
        imageView.contentMode = .scaleAspectFit
        
        super.init(frame: frame)
        
        backgroundColor = .white
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(ageLabel)
        addSubview(priceLabel)
    }
    
}
