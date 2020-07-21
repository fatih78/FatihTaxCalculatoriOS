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
    
    
    @IBOutlet weak var totalPriceLbl: UILabel! {
        didSet {
            totalPriceLbl.accessibilityIdentifier = "TotalPrice"
        }
    }
    
    @IBOutlet weak var euroSign: UIImageView! {
        didSet {
            euroSign.accessibilityIdentifier = "EuroSign"
        }
    }
    
    @IBOutlet weak var country: UITextField! {
        didSet {
            country.accessibilityIdentifier = "TaxCountry"
        }
    }
    
    
    //    is loaded whenever our screen is loaded everytime
    override func viewDidLoad() {
        super.viewDidLoad()
        //        to set the label on a empty string by every load
        totalPriceLbl.text = ""
        //         hide keyboard with every load
        self.HideKeyboard()
        self.okButton.addTarget(self, action: #selector(createAlert), for: .touchUpInside)
    }
    
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
        //        let is an variable, we need to convert text into number with 'Double' > decimals
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        
        //         we're converting a number into a string > string interpolation
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
        
        self.present (alert, animated: true, completion: nil)
    }
    
}




