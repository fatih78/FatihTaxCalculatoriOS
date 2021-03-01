//
//  Validations.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 28/02/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func calcAlertsPrice(){
        //  let is an variable, we need to convert text into number with 'Double' > decimals
        let price = Double(priceTxt.text!)!
        let price2 = Double(priceTxt2.text!)!
        
        if (price.isZero || price2.isZero || price.isLess(than: 0.00) || price2.isLess(than: 0.00)) {
            createAlert(title: "Enter Price", message: "Zero or negative numbers are not allowed!")
            
        } else if (price.isEqual(to: Double(EMPTY)) || price2.isEqual(to: Double(EMPTY)) || priceTxt.text == "Price" || priceTxt2.text == "Price"){
            createAlert(title: "Enter Price", message: "Null value's are not allowed!")
        }
        
    }
    
    
    func calcAlertsTax(){
        //  let is an variable, we need to convert text into number with 'Double' > decimals
        let salesTax = Double(salesTaxTxt.text!)!
        let salesTax2 = Double(salesTaxTxt2.text!)!
        
        
        if (salesTax.isEqual(to: 0.00) || salesTax2.isEqual(to: 0.00)) {
            createAlert(title: "Choose Country", message: "Tax field can't be empty!")
        }
        
    }
    
    //  This function is for textFields which only will take digits. Note:see ViewController text fields must delegate their selves!!!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let inverseSet = NSCharacterSet(charactersIn:"0123456789").inverted

        let components = string.components(separatedBy: inverseSet)

        let filtered = components.joined(separator: "")

        if filtered == string {
            return true
        } else {
            if string == "." {
                let countdots = textField.text!.components(separatedBy:".").count - 1
                if countdots == 0 {
                    return true
                }else{
                    if countdots > 0 && string == "." {
                        return false
                    } else {
                        return true
                    }
                }
            }else{
                return false
            }
        }
    }
}
