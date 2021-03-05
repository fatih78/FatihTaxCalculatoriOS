//
//  Flags.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 24/02/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import Foundation
import UIKit

var pos1 = CGRect(x: 100, y: 75, width: 40, height: 40)
var pos2 = CGRect(x: 245, y: 75, width: 40, height: 40)


extension SecondViewController {
    
    func imageView1(){
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = pos1
        self.view.addSubview(imageView)
        self.view.bringSubviewToFront(imageView)
    }
    
    func imageView2(){
        let image2 = UIImage(named: imageName2)
        let imageView2 = UIImageView(image: image2!)
        imageView2.frame = pos2
        self.view.addSubview(imageView2)
        self.view.bringSubviewToFront(imageView2)
    }
    
    
    
    func flag2(){
        if (finalCountry2 == "France"){
            imageName2 = "france.png"
            imageView2()
        } else if (finalCountry2 == "Netherlands"){
            imageName2 = "netherlands.png"
            imageView2()
        } else if (finalCountry2 == "Belgium"){
            imageName2 = "belgium.png"
            imageView2()
        }
    }
    
    
    
    func flag1(){
        if (finalCountry1 == "France"){
            imageName = "france.png"
            imageView1()
        } else if (finalCountry1 == "Netherlands"){
            imageName = "netherlands.png"
            imageView1()
        } else if (finalCountry1 == "Belgium"){
            imageName = "belgium.png"
            imageView1()
    }
    
}

}

