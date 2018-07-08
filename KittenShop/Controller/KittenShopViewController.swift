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
    //private var kittenViewModels: [KittenViewModel] = []
    private let kittensViewModel = KittenShopViewModel(rate: 0.5)
    
    @IBOutlet weak var kitView: KittenView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //fetchData()
        kittensViewModel.configure(kitView)
        kittensViewModel.delegate = self
    }
    
//    func fetchData() {
//        for kitten in KittensDatabase.testData() {
//            kittenViewModels.append(KittenViewModel(kitten: kitten))
//        }
//    }
//
//    @IBAction func handeSwipe() {
//        print("swiped")
//        if kittenViewModels.count > 1 {
//            kittenViewModels.removeFirst()
//            kittenViewModels.first?.configure(kitView)
//        } else {
//            kittenViewModels.removeAll()
//            fetchData()
//            kittenViewModels.first?.configure(kitView)
//        }
//    }
    
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
        print("kitten changed")
        kittensViewModel.configure(kitView)
    }
}

