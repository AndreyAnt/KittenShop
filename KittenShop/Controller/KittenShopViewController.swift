//
//  KittenShopViewController.swift
//  KittenShop
//
//  Created by Andrey Antropov on 06.07.2018.
//  Copyright © 2018 Andrey Antropov. All rights reserved.
//

import UIKit

class KittenShopViewController: UIViewController {

    //MARK: - Entities
    var kittenViewModels: [KittenViewModel] = []
    //let kittenView = KittenView(frame: view.frame)
    
    @IBOutlet weak var kittenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
        
        kittenViewModels.first?.configure(kittenView)
        
        view.addSubview(kittenView)
    }
    
    func fetchData() {
        for kitten in KittensDatabase.testData() {
            kittenViewModels.append(KittenViewModel(kitten: kitten))
        }
    }
    
    @IBAction func handeSwipe() {
        if kittenViewModels.isEmpty {
            fetchData()
            
        }
    }
}

