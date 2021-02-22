//
//  SecondViewController.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 20/02/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var finalPriceOne = ""
    var finalPriceTwo = ""
    var finalDifference = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var priceOne: UILabel!
    
    @IBOutlet weak var priceTwo: UILabel!
    
    @IBOutlet weak var differencePrices: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let imageName2 = "thumbsup.jpeg"
//        let image2 = UIImage(named: imageName2)
//        let imageView2 = UIImageView(image: image2!)
//        imageView2.frame = CGRect(x: 180, y: 350, width: 75, height: 75)
//        self.view.addSubview(imageView2)
//        self.view.bringSubviewToFront(imageView2)
        
        
        priceOne.text = finalPriceOne
        priceTwo.text = finalPriceTwo
        differencePrices.text = finalDifference
    }
    
}
