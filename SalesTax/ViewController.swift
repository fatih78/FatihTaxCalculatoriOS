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


class ViewController: UIViewController, UIPickerViewDataSource ,UIPickerViewDelegate {
    
    var countries = ["Select Country","Netherlands","France"]
    var countries2 = ["Select Country","Netherlands","France"]
    
    
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

        var data = ""

        if (pickerView.tag == 1){
            data = countries[row]
            self.detail.text = countries[row]
            if (countries[row] == "Select Country"){
                self.salesTaxTxt.text?.removeAll()
                self.priceTxt.text?.removeAll()
                salesTaxTxt.insertText("0.00")
                priceTxt.insertText("0")
                let imageName = "world.png"
                let image = UIImage(named: imageName)
                let imageView = UIImageView(image: image!)
                imageView.frame = CGRect(x: 85, y: 80, width: 40, height: 40)
                self.view.addSubview(imageView)
                self.view.bringSubviewToFront(imageView)

            }
            if (countries[row] == "Netherlands"){
                self.salesTaxTxt.text?.removeAll()
                salesTaxTxt.insertText("0.21")
                let imageName = "netherlands.png"
                let image = UIImage(named: imageName)
                let imageView = UIImageView(image: image!)
                imageView.frame = CGRect(x: 85, y: 80, width: 40, height: 40)
                self.view.addSubview(imageView)
                self.view.bringSubviewToFront(imageView)
            }
            if (countries[row] == "France"){
                self.salesTaxTxt.text?.removeAll()
                salesTaxTxt.insertText("0.20")
                let imageName = "france.png"
                let image = UIImage(named: imageName)
                let imageView = UIImageView(image: image!)
                imageView.frame = CGRect(x: 85, y: 80, width: 40, height: 40)
                self.view.addSubview(imageView)
                self.view.bringSubviewToFront(imageView)
            }

        } else if (pickerView.tag == 2){
            data = countries2[row]
            self.detail2.text = countries2[row]
            if (countries2[row] == "Select Country"){
                self.salesTaxTxt2.text?.removeAll()
                self.priceTxt2.text?.removeAll()
                salesTaxTxt2.insertText("0.00")
                priceTxt2.insertText("0")
                let imageName2 = "world.png"
                let image2 = UIImage(named: imageName2)
                let imageView2 = UIImageView(image: image2!)
                imageView2.frame = CGRect(x: 275, y: 80, width: 40, height: 40)
                self.view.addSubview(imageView2)
                self.view.bringSubviewToFront(imageView2)
            }
            if (countries2[row] == "Netherlands"){
                self.salesTaxTxt2.text?.removeAll()
                salesTaxTxt2.insertText("0.21")
                let imageName2 = "netherlands.png"
                let image2 = UIImage(named: imageName2)
                let imageView2 = UIImageView(image: image2!)
                imageView2.frame = CGRect(x: 275, y: 80, width: 40, height: 40)
                self.view.addSubview(imageView2)
                self.view.bringSubviewToFront(imageView2)
            }
            if (countries2[row] == "France"){
                    self.salesTaxTxt2.text?.removeAll()
                    salesTaxTxt2.insertText("0.20")
                    let imageName2 = "france.png"
                    let image2 = UIImage(named: imageName2)
                    let imageView2 = UIImageView(image: image2!)
                    imageView2.frame = CGRect(x: 275, y: 80, width: 40, height: 40)
                    self.view.addSubview(imageView2)
                    self.view.bringSubviewToFront(imageView2)
            }
            
        }
        return data
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        // to set the label on a empty string by every load
//                    totalPriceLbl.text = ""
                    priceTxt.text = ""
//                    totalPriceLbl2.text = ""
                    priceTxt2.text = ""
                    self.salesTaxTxt.text?.removeAll()
                    self.salesTaxTxt2.text?.removeAll()
                     self.HideKeyboard()
                    view.backgroundColor = .lightGray

    }
    
    
    
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
    


    

    
//    Price Field
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
    @IBOutlet weak var calcButton: UIButton! {
        didSet {
            calcButton.accessibilityIdentifier = "Calculator"
        }
    }



    @IBOutlet weak var appLabel: UITextField! {
        didSet {
            appLabel.accessibilityIdentifier = "AppLabel"
        }
    }
    
    
    
// A segue has a begin- & end point > ViewController >> SecondViewController
    
    var priceOne = ""
    var priceTwo = ""
    var difference = ""
    
    var totalPrice = ""
    var totalPriceTwo = ""
    var totalDifference = ""
    
//    Function when the button is hit
    @IBAction func doen(_ sender: Any) {
        calculate()
        self.priceOne = "Price1: €\(totalPrice)"
        self.priceTwo = "Price2: €\(totalPriceTwo)"
        self.difference = "Difference: €\(totalDifference)"
        
        performSegue(withIdentifier: "Text", sender: self)
    }
    
//    to access the SecondViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
//  FinalText is already set in the SecondViewController, with this we pass the text to the SecondViewController
        vc.finalPriceOne = self.priceOne
        vc.finalPriceTwo = self.priceTwo
        vc.finalDifference = self.totalDifference
    }
    
    
//
    
    @IBOutlet weak var totalResult: UITextField!

    

    func calculate(){
//    @IBAction func calculateTotalPrice(_ sender: Any) {
    //creating alert in case of empty values
        let alert = UIAlertController(title: "Error", message: "Please enter valid number!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            print("OK is pressed")

        }))

    //  let is an variable, we need to convert text into number with 'Double' > decimals
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        let price2 = Double(priceTxt2.text!)!
        let salesTax2 = Double(salesTaxTxt2.text!)!

        if (price.isEqual(to: 0) && price2.isEqual(to: 0)) {
            present(alert, animated: true, completion: nil)
        } else if (salesTax.isEqual(to: 0.00) && salesTax2.isEqual(to: 0.00)) {
            present(alert, animated: true, completion: nil)
        }

        let totalSalesTax = price * salesTax
        totalPrice = String(price + totalSalesTax)

        
        let totalSalesTax2 = price2 * salesTax2
        totalPriceTwo = String(price2 + totalSalesTax2)

        
        totalDifference = String((price + totalSalesTax)-(price2 + totalSalesTax2))
        
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


    }

}
