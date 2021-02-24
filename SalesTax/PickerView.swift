//
//  PickerView.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 24/02/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import Foundation
import UIKit
var position1 = CGRect(x: 85, y: 80, width: 40, height: 40)
var position2 = CGRect(x: 275, y: 80, width: 40, height: 40)


extension ViewController {

    
    func Countries1(){
        self.salesTaxTxt.text?.removeAll()
        self.priceTxt.text?.removeAll()
        salesTaxTxt.insertText("0.00")
        priceTxt.insertText("0")
        let imageName = "world.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = position1
        self.view.addSubview(imageView)
        self.view.bringSubviewToFront(imageView)
    }
    
    func Countries2(){
        self.salesTaxTxt2.text?.removeAll()
        self.priceTxt2.text?.removeAll()
        salesTaxTxt2.insertText("0.00")
        priceTxt2.insertText("0")
        let imageName2 = "world.png"
        let image2 = UIImage(named: imageName2)
        let imageView2 = UIImageView(image: image2!)
        imageView2.frame = position2
        self.view.addSubview(imageView2)
        self.view.bringSubviewToFront(imageView2)
    }
    
    func France1(){
        self.salesTaxTxt.text?.removeAll()
        salesTaxTxt.insertText("0.20")
        let imageName = "france.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = position1
        self.view.addSubview(imageView)
        self.view.bringSubviewToFront(imageView)
        
    }
    
    func France2(){
        self.salesTaxTxt2.text?.removeAll()
        salesTaxTxt2.insertText("0.20")
        let imageName2 = "france.png"
        let image2 = UIImage(named: imageName2)
        let imageView2 = UIImageView(image: image2!)
        imageView2.frame = position2
        self.view.addSubview(imageView2)
        self.view.bringSubviewToFront(imageView2)
        
    }
    
    func Netherlands1(){
        self.salesTaxTxt.text?.removeAll()
        salesTaxTxt.insertText("0.21")
        let imageName = "netherlands.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = position1
        self.view.addSubview(imageView)
        self.view.bringSubviewToFront(imageView)
        
    }
    
    func Netherlands2(){
        self.salesTaxTxt2.text?.removeAll()
        salesTaxTxt2.insertText("0.21")
        let imageName2 = "netherlands.png"
        let image2 = UIImage(named: imageName2)
        let imageView2 = UIImageView(image: image2!)
        imageView2.frame = position2
        self.view.addSubview(imageView2)
        self.view.bringSubviewToFront(imageView2)
        
    }
}
