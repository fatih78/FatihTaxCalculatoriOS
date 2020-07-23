//
//  ViewController.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 17/07/2020.
//  Copyright © 2020 Fatih Topcuoglu. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func HideKeyboard () {
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        
        view.addGestureRecognizer(Tap)
    }
    
    @objc func DismissKeyboard () {
        view.endEditing(true)
    }
}


class ViewController: UIViewController {

    
    
    @IBOutlet weak var priceTxt: UITextField! {
        didSet {
            priceTxt.accessibilityIdentifier = "Price"
        }
    }
    
    @IBOutlet weak var salesTaxTxt: UITextField! {
        didSet {
            salesTaxTxt.accessibilityIdentifier = "SalesTax"
        }
    }
    
    @IBOutlet weak var calcButton: UIButton! {
        didSet {
            calcButton.accessibilityIdentifier = "Calculator"
        }
    }
    
    @IBOutlet weak var okButton: UIButton! {
        didSet {
            okButton.accessibilityIdentifier = "OK"
            }
        }
    
    @IBOutlet weak var taxNL: UIButton! {
    didSet {
        taxNL.accessibilityIdentifier = "taxNL"
        }
        
    }
    
    @IBAction func taxNL(_ sender: Any) {
        salesTaxTxt.text?.removeAll()
        salesTaxTxt.insertText("0.21")
        country.text?.removeAll()
        country.insertText("Netherlands")

    }
    
    @IBOutlet weak var taxFR: UIButton!{
    didSet {
        taxFR.accessibilityIdentifier = "taxFR"
        }

    }
    
    @IBAction func taxFR(_ sender: Any) {
        salesTaxTxt.text?.removeAll()
        salesTaxTxt.insertText("0.20")
        country.text?.removeAll()
        country.insertText("France")
    }
    
    
    @IBOutlet weak var totalPriceLbl: UILabel! {
        didSet {
            totalPriceLbl.accessibilityIdentifier = "TotalPrice"
        }
    }
    

    @IBOutlet weak var appLabel: UITextField! {
        didSet {
            appLabel.accessibilityIdentifier = "AppLabel"
        }
    }
    
    @IBOutlet weak var country: UITextField! {
        didSet {
            country.accessibilityIdentifier = "TaxCountry"
        }
    }
    
    
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
    //creating alert in case of empty values
        let alert = UIAlertController(title: "Error", message: "Can't be empty", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            print("OK is pressed")
        }))
        
    //  let is an variable, we need to convert text into number with 'Double' > decimals
        let price = Double(priceTxt.text!)!
        if price.isLess(than: 1.00) == true {
            present(alert, animated: true, completion: nil)
        }
        
        let salesTax = Double(salesTaxTxt.text!)!
        if salesTax.isLess(than: 0.00) == true {
            present(alert, animated: true, completion: nil)
         }

        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        
    //  we're converting a number into a string > string interpolation
        totalPriceLbl.text = "\(totalPrice)"
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        createMessage(title: "Test", message: "Test is Starting")
    }
    
    
    @objc func createAlert(title:String, message:String)
    {
        // Create Alert
        let alert = UIAlertController(title: "Results", message: "Tests Completed&OK", preferredStyle: .alert)
        // Creating on button
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            print("OK is pressed")
        }))
        
        
        self.present (alert, animated: true, completion: nil)
    }
    
    @objc func createMessage(title:String, message:String)
    {
        // Create Alert
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        //        // Creating on button
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            print("OK")
        }))
        
//        self.present (alert, animated: true, completion: nil)
    }
    
// Is loaded whenever our screen is loaded everytime
        override func viewDidLoad() {
            super.viewDidLoad()
        // to set the label on a empty string by every load
            totalPriceLbl.text = ""
            country.text = "empty"
            priceTxt.text = ""
            salesTaxTxt.text = "0.00"
        // hide keyboard with every load
            self.HideKeyboard()
    //     self.okButton.addTarget(self, action: #selector(createAlert), for: .touchUpInside)
        }
    
}




