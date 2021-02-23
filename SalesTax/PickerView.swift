////
////  PickerView.swift
////  SalesTax
////
////  Created by Fatih Topcuoglu on 24/02/2021.
////  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//extension ViewController {
//
//
//    
//    //    pickerView1
//     
//        func numberOfComponents(in pickerView: UIPickerView) -> Int {
//            return 1
//        }
//        
//        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//            var count = 0
//            if (pickerView.tag == 1){
//                count = countries.count
//            } else if (pickerView.tag == 2){
//                count = countries2.count
//            }
//            return count
//            
//        }
//        
//        
//        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
//        {
//
//    //        var data = ""
//
//            if (pickerView.tag == 1){
//                data = countries[row]
//                self.detail.text = countries[row]
//                if (countries[row] == "Select Country"){
//                    self.salesTaxTxt.text?.removeAll()
//                    self.priceTxt.text?.removeAll()
//                    salesTaxTxt.insertText("0.00")
//                    priceTxt.insertText("0")
//                    let imageName = "world.png"
//                    let image = UIImage(named: imageName)
//                    let imageView = UIImageView(image: image!)
//                    imageView.frame = CGRect(x: 85, y: 80, width: 40, height: 40)
//                    self.view.addSubview(imageView)
//                    self.view.bringSubviewToFront(imageView)
//
//                }
//                if (countries[row] == "Netherlands"){
//                    self.salesTaxTxt.text?.removeAll()
//                    salesTaxTxt.insertText("0.21")
//                    let imageName = "netherlands.png"
//                    let image = UIImage(named: imageName)
//                    let imageView = UIImageView(image: image!)
//                    imageView.frame = CGRect(x: 85, y: 80, width: 40, height: 40)
//                    self.view.addSubview(imageView)
//                    self.view.bringSubviewToFront(imageView)
//                }
//                if (countries[row] == "France"){
//                    self.salesTaxTxt.text?.removeAll()
//                    salesTaxTxt.insertText("0.20")
//                    let imageName = "france.png"
//                    let image = UIImage(named: imageName)
//                    let imageView = UIImageView(image: image!)
//                    imageView.frame = CGRect(x: 85, y: 80, width: 40, height: 40)
//                    self.view.addSubview(imageView)
//                    self.view.bringSubviewToFront(imageView)
//                }
//
//            } else if (pickerView.tag == 2){
//                data2 = countries2[row]
//                self.detail2.text = countries2[row]
//                if (countries2[row] == "Select Country"){
//                    self.salesTaxTxt2.text?.removeAll()
//                    self.priceTxt2.text?.removeAll()
//                    salesTaxTxt2.insertText("0.00")
//                    priceTxt2.insertText("0")
//                    let imageName2 = "world.png"
//                    let image2 = UIImage(named: imageName2)
//                    let imageView2 = UIImageView(image: image2!)
//                    imageView2.frame = CGRect(x: 275, y: 80, width: 40, height: 40)
//                    self.view.addSubview(imageView2)
//                    self.view.bringSubviewToFront(imageView2)
//                }
//                if (countries2[row] == "Netherlands"){
//                    self.salesTaxTxt2.text?.removeAll()
//                    salesTaxTxt2.insertText("0.21")
//                    let imageName2 = "netherlands.png"
//                    let image2 = UIImage(named: imageName2)
//                    let imageView2 = UIImageView(image: image2!)
//                    imageView2.frame = CGRect(x: 275, y: 80, width: 40, height: 40)
//                    self.view.addSubview(imageView2)
//                    self.view.bringSubviewToFront(imageView2)
//                }
//                if (countries2[row] == "France"){
//                        self.salesTaxTxt2.text?.removeAll()
//                        salesTaxTxt2.insertText("0.20")
//                        let imageName2 = "france.png"
//                        let image2 = UIImage(named: imageName2)
//                        let imageView2 = UIImageView(image: image2!)
//                        imageView2.frame = CGRect(x: 275, y: 80, width: 40, height: 40)
//                        self.view.addSubview(imageView2)
//                        self.view.bringSubviewToFront(imageView2)
//                }
//                return data2
//            }
//            return data
//            
//        }
//}
