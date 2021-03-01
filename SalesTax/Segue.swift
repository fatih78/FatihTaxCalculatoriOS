//
//  Segue.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 01/03/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    // A segue has a begin- & end point > ViewController >> SecondViewController
    
    
    //    Function when the button is hit
    @IBAction func doen(_ sender: Any) {
        if (priceTxt.hasText && priceTxt2.hasText){
            finalCalc()
            self.priceOne = "Price1: €\(totalPrice)"
            self.priceTwo = "Price2: €\(totalPriceTwo)"
            self.difference = "Difference: €\(totalDifference)"
            self.country1 = data
            self.country2 = data2
        } else {
            createAlert(title: "Empty Price Fields", message: "Please enter value's")
        }

        performSegue(withIdentifier: "Text", sender: self)
    }
    
    //    to access the SecondViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        //  FinalText is already set in the SecondViewController, with this we pass the text to the SecondViewController
        vc.finalPriceOne = self.priceOne
        vc.finalPriceTwo = self.priceTwo
        vc.finalDifference = self.difference
        vc.finalCountry1 = self.country1
        vc.finalCountry2 = self.country2
    }
    
}
