//
//  Flags.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 24/02/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import Foundation
import UIKit

extension SecondViewController {
    
    
    func flag2(finalCountry2: String){
        if (finalCountry2 == "France"){
            imageName2 = "france.png"
            let image2 = UIImage(named: imageName2)
            let imageView2 = UIImageView(image: image2!)
            imageView2.frame = CGRect(x: 275, y: 45, width: 40, height: 40)
            self.view.addSubview(imageView2)
            self.view.bringSubviewToFront(imageView2)
        } else if (finalCountry2 == "Netherlands"){
            imageName2 = "netherlands.png"
            let image2 = UIImage(named: imageName2)
            let imageView2 = UIImageView(image: image2!)
            imageView2.frame = CGRect(x: 275, y: 45, width: 40, height: 40)
            self.view.addSubview(imageView2)
            self.view.bringSubviewToFront(imageView2)
        }

    }
    
    func flag1(finalCountry1: String){
        if (finalCountry1 == "France"){
        imageName = "france.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 85, y: 45, width: 40, height: 40)
        self.view.addSubview(imageView)
        self.view.bringSubviewToFront(imageView)
        } else if (finalCountry1 == "Netherlands"){
        imageName = "netherlands.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: 85, y: 45, width: 40, height: 40)
        self.view.addSubview(imageView)
        self.view.bringSubviewToFront(imageView)
        }
        
    }
}
