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
    
    func flag2(){
        imageName2 = "france.png"
        let image2 = UIImage(named: imageName2)
        let imageView2 = UIImageView(image: image2!)
        imageView2.frame = CGRect(x: 275, y: 45, width: 40, height: 40)
        self.view.addSubview(imageView2)
        self.view.bringSubviewToFront(imageView2)
    }
    
    func flag1(){
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 85, y: 45, width: 40, height: 40)
        self.view.addSubview(imageView)
        self.view.bringSubviewToFront(imageView)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

                
        priceOne.text = finalPriceOne
        priceTwo.text = finalPriceTwo
        differencePrices.text = finalDifference
        country1.text = finalCountry1
        country2.text = finalCountry2
        
        if (finalCountry2 == "France") {
            imageName2 = "france.png"
            flag2()
        } else if (finalCountry2 == "Netherlands") {
            imageName2 = "netherlands.png"
            flag2()
        }
        if (finalCountry1 == "France"){
            imageName = "france.png"
            flag1()
        } else if (finalCountry1 == "Netherlands"){
            imageName = "netherlands.png"
            flag1()
        }
    
}
}
