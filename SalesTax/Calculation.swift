//
//  FieldCheck.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 28/02/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {

        
    func finalCalc() {
        //  let is an variable, we need to convert text into number with 'Double' > decimals
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        let price2 = Double(priceTxt2.text!)!
        let salesTax2 = Double(salesTaxTxt2.text!)!
        
        validateNumeric()
        calcAlertsPrice()
        calcAlertsTax()

    
        let totalSalesTax = price * salesTax
        totalPrice = String(price + totalSalesTax)
        
        
        let totalSalesTax2 = price2 * salesTax2
        totalPriceTwo = String(price2 + totalSalesTax2)
        
        
        totalDifference = String(format: "%.2f",((price + totalSalesTax))-(price2 + totalSalesTax2))
        
    }
    
    
    
    
    
    func calcAlertsPrice(){
        //  let is an variable, we need to convert text into number with 'Double' > decimals
        let price = Double(priceTxt.text!)!
        let price2 = Double(priceTxt2.text!)!
        
        if (price.isZero || price2.isZero || price.isLess(than: 0.00) || price2.isLess(than: 0.00) || priceTxt.text!.isEmpty || priceTxt2.text!.isEmpty) {
            createAlert(title: "Enter Price", message: "Empty fields or negative numbers are not allowed!")
            
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
    
    func validateNumeric(){

        let isValid = Validations().numberValidation(number: priceTxt.text!)
        let isValid2 = Validations().numberValidation(number: priceTxt2.text!)

        if (isValid == false || isValid2 == false) {
                createAlert(title: "Numeric", message: "Only Numeric Values")
        }
    }
}

