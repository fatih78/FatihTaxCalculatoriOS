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
    var finalCountry1 = ""
    var finalCountry2 = ""
    
    var imageName2 = ""
    var imageName = ""
    
    
    @IBOutlet weak var priceOne: UILabel!{
        didSet {
            priceOne.accessibilityIdentifier = "priceOne"
        }
    }
    
    @IBOutlet weak var priceTwo: UILabel!{
        didSet {
            priceTwo.accessibilityIdentifier = "priceTwo"
        }
    }
    
    @IBOutlet weak var differencePrices: UILabel!{
        didSet {
            differencePrices.accessibilityIdentifier = "differencePrices"
        }
    }
    
    @IBOutlet weak var country1: UITextField!{
        didSet {
            country1.accessibilityIdentifier = "country1"
        }
    }
    
    @IBOutlet weak var country2: UITextField!{
        didSet {
            country2.accessibilityIdentifier = "country2"
        }
    }
    
    @IBAction func previousScreen(_ sender: Any) {
        performSegue(withIdentifier: "Previous", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        priceOne.text = finalPriceOne
        priceTwo.text = finalPriceTwo
        differencePrices.text = finalDifference
        country1.text = finalCountry1
        country2.text = finalCountry2
        
        flag1()
        flag2()
        
    }
}
