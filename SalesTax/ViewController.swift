//
//  ViewController.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 17/07/2020.
//  Copyright © 2020 Fatih Topcuoglu. All rights reserved.
//


import UIKit
extension UIViewController {
    @IBAction func start (_ sender:AnyObject ){
        let activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()

        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.medium
        view.addSubview(activityIndicator)

        activityIndicator.startAnimating()
        self.view.isUserInteractionEnabled = false
   }
    
    func HideKeyboard () {
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        
        view.addGestureRecognizer(Tap)
    }
    
    @objc func DismissKeyboard () {
        view.endEditing(true)
    }
}


class ViewController: UIViewController, UIPickerViewDataSource
,UIPickerViewDelegate {
    
    
    @IBOutlet weak var salesTaxTxt: UITextField! {
        didSet {
            salesTaxTxt.accessibilityIdentifier = "SalesTax"
        }
    }
    
    
    
    @IBOutlet weak var pickerView: UIPickerView! {
    didSet {
        pickerView.accessibilityIdentifier = "Picker"
        }
    }
    
    var countries = ["Select Country", "DE", "FR", "NL"]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return countries [row]
    }
    
    @IBOutlet weak var detail: UILabel! {
        didSet {
            detail.accessibilityIdentifier = "CountryLabel"
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detail.text = countries[row]
        if (countries[row] == "NL"){
            self.salesTaxTxt.text?.removeAll()
            salesTaxTxt.insertText("0.21")
            detail.text = "Netherlands"
            //Imageview on Top of View
            let imageName = "netherlands.png"
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
            self.view.addSubview(imageView)
            self.view.bringSubviewToFront(imageView)

        } else if (countries[row] == "FR") {
                self.salesTaxTxt.text?.removeAll()
                salesTaxTxt.insertText("0.20")
                detail.text = "France"
                //Imageview on Top of View
                let imageName = "france.png"
                let image = UIImage(named: imageName)
                let imageView = UIImageView(image: image!)
                imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
                self.view.addSubview(imageView)
                self.view.bringSubviewToFront(imageView)
        } else if (countries[row] == "DE") {
                self.salesTaxTxt.text?.removeAll()
                salesTaxTxt.insertText("0.25")
                detail.text = "Denmark"
                //Imageview on Top of View
                let imageName = "denmark.png"
                let image = UIImage(named: imageName)
                let imageView = UIImageView(image: image!)
                imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
                self.view.addSubview(imageView)
                self.view.bringSubviewToFront(imageView)
        } else {
                self.salesTaxTxt.text?.removeAll()
                salesTaxTxt.insertText("0.00")
                detail.text = "Select Country"
                //Imageview on Top of View
                 let imageName = "world.png"
                 let image = UIImage(named: imageName)
                 let imageView = UIImageView(image: image!)
                 imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
                 self.view.addSubview(imageView)
                 self.view.bringSubviewToFront(imageView)

        }
    }

    
    
    @IBOutlet weak var priceTxt: UITextField! {
        didSet {
            priceTxt.accessibilityIdentifier = "Price"
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
    

    
    @IBAction func taxNL(_ sender: Any) {
        salesTaxTxt.text?.removeAll()
        salesTaxTxt.insertText("0.21")

    }
    
    @IBOutlet weak var taxFR: UIButton!{
    didSet {
        taxFR.accessibilityIdentifier = "taxFR"
        }

    }
    
    @IBAction func taxFR(_ sender: Any) {
        salesTaxTxt.text?.removeAll()
        salesTaxTxt.insertText("0.20")

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
    
    
    
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
    //creating alert in case of empty values
        let alert = UIAlertController(title: "Error", message: "Number can't be negative", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            print("OK is pressed")
        }))
        
    //  let is an variable, we need to convert text into number with 'Double' > decimals
       let price = Double(priceTxt.text!)!
        if price.isLess(than: 0.00) == true {
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
            priceTxt.text = ""
            salesTaxTxt.text = "0.00"
        // hide keyboard with every load
            self.HideKeyboard()
            view.backgroundColor = .lightGray
    //     self.okButton.addTarget(self, action: #selector(createAlert), for: .touchUpInside)
            //Imageview on Top of View
             let imageName = "world.png"
             let image = UIImage(named: imageName)
             let imageView = UIImageView(image: image!)
             imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
             self.view.addSubview(imageView)
             self.view.bringSubviewToFront(imageView)
        }
    
    @IBAction func handleSelection(_ sender: UIButton) {
    }
    
    
}




