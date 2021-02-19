////
////  Tax.swift
////  SalesTax
////
////  Created by Fatih Topcuoglu on 19/02/2021.
////  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
////
//
//import UIKit
//import Foundation
//let c = ViewController()
//
//class TaxCalc: ViewController {
//    
//    //    pickerView1
//            var countries = ["Select Country", "Netherlands"]
//            var countries2 = ["Select Country","Netherlands"]
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
//func Tax(){
//    var data = ""
//
//    if (ViewpickerView.tag == 1){
//        data = c.countries[c.row]
//        self.detail.text = countries[row]
//        if (countries[row] == "Select Country"){
//            self.salesTaxTxt.text?.removeAll()
//            let imageName = "world.png"
//            let image = UIImage(named: imageName)
//            let imageView = UIImageView(image: image!)
//            imageView.frame = CGRect(x: 15, y: 100, width: 40, height: 40)
//            self.view.addSubview(imageView)
//        }
//        if (countries[row] == "Netherlands"){
//            self.salesTaxTxt.text?.removeAll()
//            salesTaxTxt.insertText("0.21")
//            let imageName2 = "netherlands.png"
//            let image2 = UIImage(named: imageName2)
//            let imageView2 = UIImageView(image: image2!)
//            imageView2.frame = CGRect(x: 15, y: 100, width: 40, height: 40)
//            self.view.addSubview(imageView2)
//        }
//        
//    } else if (pickerView.tag == 2){
//        data = countries2[row]
//        self.detail2.text = countries2[row]
//        if (countries2[row] == "Select Country"){
//            self.salesTaxTxt2.text?.removeAll()}
//        if (countries2[row] == "Netherlands"){
//            self.salesTaxTxt2.text?.removeAll()
//            salesTaxTxt2.insertText("0.20")}
//    }
//    return data
//
//}
//            
//        }}
