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
        
        
        calcAlertsPrice()
        calcAlertsTax()
        countryAlert()
        
        let totalSalesTax = price * salesTax
        totalPrice = String(price + totalSalesTax)
        
        
        let totalSalesTax2 = price2 * salesTax2
        totalPriceTwo = String(price2 + totalSalesTax2)
        
        
        totalDifference = String(format: "%.2f",((price + totalSalesTax))-(price2 + totalSalesTax2))
        
    }
    
}

