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
                    totalPriceLbl.text = ""
                    priceTxt.text = ""
                    totalPriceLbl2.text = ""
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

    @IBOutlet weak var calcButton2: UIButton!{
        didSet {
            calcButton2.accessibilityIdentifier = "Calculator"
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

    @IBOutlet weak var totalPriceLbl2: UILabel!{
        didSet {
            totalPriceLbl2.accessibilityIdentifier = "TotalPrice2"
        }
    }


    @IBOutlet weak var appLabel: UITextField! {
        didSet {
            appLabel.accessibilityIdentifier = "AppLabel"
        }
    }
    
    @IBOutlet weak var totalResult: UITextField!
    

    @IBAction func NextViewMessage(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let vc = segue.destination as! SecondViewController
//        vc.messageSecondView = vc.textFieldSecondView.text
       
        if let destinationViewController = segue.destination as? SecondViewController {
//            destinationViewController.messageSecondView = "Hi"
            destinationViewController.textFieldSecondView.text = "Hi"
        }
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let secondVC = segue.destination as! SecondViewController
//            secondVC.secondVCData = textField.text
//         
//        }
//    
    @IBAction func calculateTotalPrice(_ sender: Any) {
    //creating alert in case of empty values
        let alert = UIAlertController(title: "Error", message: "Please enter valid number!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            print("OK is pressed")
            // after pressing OK button the totalPrice field is cleared
            self.totalPriceLbl.text?.removeAll()
            self.totalPriceLbl2.text?.removeAll()

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
        let totalPrice = price + totalSalesTax

        //  we're converting a number into a string > string interpolation
        totalPriceLbl.text = "€\(totalPrice)"
        
        let totalSalesTax2 = price2 * salesTax2
        let totalPrice2 = price2 + totalSalesTax2

        //  we're converting a number into a string > string interpolation
        totalPriceLbl2.text = "€\(totalPrice2)"
        
        
        let totalDiff = totalPrice - totalPrice2
        totalResult.text = "€\(totalDiff)"
        
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

//    @IBAction func handleSelection(_ sender: UIButton) {
//    }
}
