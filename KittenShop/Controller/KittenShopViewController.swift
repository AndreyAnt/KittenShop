//
//  KittenShopViewController.swift
//  KittenShop
//
//  Created by Andrey Antropov on 06.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import UIKit

class KittenShopViewController: UIViewController, KittenShopDelegate {
    

    //MARK: - Entities
    private let kittensViewModel = KittenShopViewModel(rate: 0.5)
    
    @IBOutlet weak var kitView: KittenView!
    @IBOutlet weak var peopleOnlineLabel: UILabel!
    
    //MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //fetchData()
        kittensViewModel.configure(kitView)
        kittensViewModel.delegate = self
        
        kittensViewModel.peopleOnline.bind { [unowned self] value in
            self.peopleOnlineLabel.text = "Buyers on-line: \(value)"
        }
    }
    
    //MARK: - Actions
    @IBAction func swiped(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .right:
            kittensViewModel.swipeRight()
        case .left:
            kittensViewModel.swipeLeft()
        default:
            break
        }
        
    }
    
    //MARK: - Delegate methods
    func currentKittenChanged() {
        kittensViewModel.configure(kitView)
    }
}

