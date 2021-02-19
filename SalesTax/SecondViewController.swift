//
//  SecondViewController.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 20/02/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageName2 = "thumbsup.jpeg"
        let image2 = UIImage(named: imageName2)
        let imageView2 = UIImageView(image: image2!)
        imageView2.frame = CGRect(x: 110, y: 120, width: 150, height: 150)
        self.view.addSubview(imageView2)
        self.view.bringSubviewToFront(imageView2)
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
