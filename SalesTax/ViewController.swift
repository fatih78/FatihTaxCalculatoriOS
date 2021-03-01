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


class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    var countries = ["Select Country","Netherlands","France","Belgium"]
    var countries2 = ["Select Country","Netherlands","France","Belgium"]
    var data = ""
    var data2 = ""
    
    
    // A segue has a begin- & end point > ViewController >> SecondViewController
    // See alsoclass Segue.swift
    var priceOne = ""
    var priceTwo = ""
    var difference = ""
    var country1 = ""
    var country2 = ""
    var totalPrice = ""
    var totalPriceTwo = ""
    var totalDifference = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.HideKeyboard()
        priceTxt.delegate = self
        priceTxt2.delegate = self
        salesTaxTxt.delegate = self
        salesTaxTxt2.delegate = self
        view.backgroundColor = .lightGray
    }
    
    
    //   Buttons/Labels/Fields
    
    @IBOutlet weak var salesTaxTxt: UITextField! {
        didSet {
            salesTaxTxt.accessibilityIdentifier = "SalesTax"
        }
    }
    
    @IBOutlet weak var salesTaxTxt2: UITextField!{
        didSet {
            salesTaxTxt2.accessibilityIdentifier = "SalesTax2"
        }
    }
    
    //  Detail
    @IBOutlet weak var detail: UILabel! {
        didSet {
            detail.accessibilityIdentifier = "CountryLabel"
        }
    }
    
    @IBOutlet weak var detail2: UILabel!{
        didSet {
            detail2.accessibilityIdentifier = "CountryLabel2"
        }
    }
    
    
    
    @IBOutlet weak var priceTxt: UITextField! {
        didSet {
            priceTxt.accessibilityIdentifier = "Price"
        }
    }
    
    @IBOutlet weak var priceTxt2: UITextField! {
        didSet {
            priceTxt2.accessibilityIdentifier = "Price2"
        }
    }
    //
    
    //  Calc Button
    @IBOutlet weak var calcBtn: UIButton!{
        didSet {
            calcBtn.accessibilityIdentifier = "Calculator"
        }
    }
    
    
    
    @IBOutlet weak var appLabel: UITextField! {
        didSet {
            appLabel.accessibilityIdentifier = "AppLabel"
        }
    }
    
    
    //    pickerView1
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var count = 0
        if (pickerView.tag == 1){
            count = countries.count
        } else if (pickerView.tag == 2){
            count = countries2.count
        }
        return count
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        
        if (pickerView.tag == 1){
            data = countries[row]
            self.detail.text = countries[row]
            if (countries[row] == "Select Country"){
                Countries1()
            }
            if (countries[row] == "Netherlands"){
                Netherlands1()
            }
            if (countries[row] == "France"){
                France1()
            }
            if (countries[row] == "Belgium"){
                Belgium1()
            }
            
        } else if (pickerView.tag == 2){
            data2 = countries2[row]
            self.detail2.text = countries2[row]
            if (countries2[row] == "Select Country"){
                Countries2()
            }
            if (countries2[row] == "Netherlands"){
                Netherlands2()
            }
            if (countries2[row] == "France"){
                France2()
            }
            if (countries2[row] == "Belgium"){
                Belgium2()
            }
            
            return data2
        }
        return data
        
    }
    
    @objc func createAlert(title:String, message:String)
    {
        // Create Alert
        let alert = UIAlertController(title:title, message:message, preferredStyle: .alert)
        // Creating on button
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            print("OK is pressed")
        }))
        self.present (alert, animated: true, completion: nil)
    }
    
}
