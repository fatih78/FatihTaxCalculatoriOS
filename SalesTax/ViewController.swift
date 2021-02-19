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
    
    
//    pickerView1
        var countries = ["Select Country", "Netherlands"]
        var countries2 = ["Select Country","Netherlands"]
    
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
                let imageName = "world.png"
                let image = UIImage(named: imageName)
                let imageView = UIImageView(image: image!)
                imageView.frame = CGRect(x: 15, y: 100, width: 40, height: 40)
                self.view.addSubview(imageView)
            }
            if (countries[row] == "Netherlands"){
                self.salesTaxTxt.text?.removeAll()
                salesTaxTxt.insertText("0.21")
                let imageName2 = "netherlands.png"
                let image2 = UIImage(named: imageName2)
                let imageView2 = UIImageView(image: image2!)
                imageView2.frame = CGRect(x: 15, y: 100, width: 40, height: 40)
                self.view.addSubview(imageView2)
            }

        } else if (pickerView.tag == 2){
            data = countries2[row]
            self.detail2.text = countries2[row]
            if (countries2[row] == "Select Country"){
                self.salesTaxTxt2.text?.removeAll()}
            if (countries2[row] == "Netherlands"){
                self.salesTaxTxt2.text?.removeAll()
                salesTaxTxt2.insertText("0.20")}
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
        
        
                    //Imageview on Top of View
                     let imageName = "world.png"
                     let image = UIImage(named: imageName)
                     let imageView = UIImageView(image: image!)
                     imageView.frame = CGRect(x: 15, y: 100, width: 40, height: 40)
                     self.view.addSubview(imageView)
                     self.view.bringSubviewToFront(imageView)
        
//                    let imageName2 = "world.png"
//                    let image2 = UIImage(named: imageName2)
//                    let imageView2 = UIImageView(image: image2!)
//                    imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
//                    self.view.addSubview(imageView2)
//                    self.view.bringSubviewToFront(imageView2)
    }
    
//
    
    
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
    

    
    


    
//    @IBOutlet weak var pickerView: UIPickerView! {
//    didSet {
//        pickerView.accessibilityIdentifier = "Picker"
//        }
//    }
    

//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        if (countries2[row] == "NL"){
//            self.salesTaxTxt2.text?.removeAll()
//            salesTaxTxt2.insertText("0.21")
//            detail2.text = "Netherlands"
//
//        } else if  (countries[row] == "NL"){
//            self.salesTaxTxt.text?.removeAll()
//            salesTaxTxt.insertText("0.21")
//            detail.text = "Netherlands"
//
//        }
//
//    }

//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        if (countries[row] == "NL"){
//            self.salesTaxTxt.text?.removeAll()
//            salesTaxTxt.insertText("0.21")
//            detail.text = "Netherlands"
//        }}
//            //Imageview on Top of View
////            let imageName = "netherlands.png"
////            let image = UIImage(named: imageName)
////            let imageView = UIImageView(image: image!)
////            imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
////            self.view.addSubview(imageView)
////            self.view.bringSubviewToFront(imageView)
//
//        } else if (countries[row] == "FR") {
//                self.salesTaxTxt.text?.removeAll()
//                salesTaxTxt.insertText("0.20")
//                detail.text = "France"
//                //Imageview on Top of View
////                let imageName = "france.png"
////                let image = UIImage(named: imageName)
////                let imageView = UIImageView(image: image!)
////                imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
////                self.view.addSubview(imageView)
////                self.view.bringSubviewToFront(imageView)
//        } else if (countries[row] == "DE") {
//                self.salesTaxTxt.text?.removeAll()
//                salesTaxTxt.insertText("0.25")
//                detail.text = "Denmark"
//                //Imageview on Top of View
////                let imageName = "denmark.png"
////                let image = UIImage(named: imageName)
////                let imageView = UIImageView(image: image!)
////                imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
////                self.view.addSubview(imageView)
////                self.view.bringSubviewToFront(imageView)
//        } else {
//                self.salesTaxTxt.text?.removeAll()
//                salesTaxTxt.insertText("0.00")
//                detail.text = "Select Country"
//                //Imageview on Top of View
////                 let imageName = "world.png"
////                 let image = UIImage(named: imageName)
////                 let imageView = UIImageView(image: image!)
////                 imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
////                 self.view.addSubview(imageView)
////                 self.view.bringSubviewToFront(imageView)
//
//        }
//    }
    

//    //    pickerView2
//    @IBOutlet weak var pickerView2: UIPickerView!{
//        didSet {
//            pickerView2.accessibilityIdentifier = "Picker2"
//            }
//    }
//    
//    func numberOfComponents2(in pickerView2: UIPickerView) -> Int {
//            return 1
//        }
//    
//    func pickerView2(_ pickerView2: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return countries2.count
//    }
//    
//    
//    func pickerView2(_ pickerView2: UIPickerView, titleForRow row2: Int, forComponent component: Int) -> String?
//    {
//        return countries2 [row2]
//    }
//
//    func pickerView2(_ pickerView2: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        detail2.text = countries2[row]
//        if (countries2[row] == "NL"){
//            self.salesTaxTxt2.text?.removeAll()
//            salesTaxTxt2.insertText("0.21")
//            detail2.text = "Netherlands"
//            //Imageview on Top of View
////            let imageName2 = "netherlands.png"
////            let image2 = UIImage(named: imageName2)
////            let imageView2 = UIImageView(image: image2!)
////            imageView2.frame = CGRect(x: 95, y: 45, width: 40, height: 40)
////            self.view.addSubview(imageView2)
////            self.view.bringSubviewToFront(imageView2)
//
//        } else if (countries2[row] == "FR") {
//                self.salesTaxTxt2.text?.removeAll()
//                salesTaxTxt2.insertText("0.20")
//                detail2.text = "France"
//                //Imageview on Top of View
////                let imageName2 = "france.png"
////                let image2 = UIImage(named: imageName2)
////                let imageView2 = UIImageView(image: image2!)
////                imageView2.frame = CGRect(x: 95, y: 45, width: 40, height: 40)
////                self.view.addSubview(imageView2)
////                self.view.bringSubviewToFront(imageView2)
//        } else if (countries2[row] == "DE") {
//                self.salesTaxTxt2.text?.removeAll()
//                salesTaxTxt2.insertText("0.25")
//                detail2.text = "Denmark"
//                //Imageview on Top of View
////                let imageName2 = "denmark.png"
////                let image2 = UIImage(named: imageName2)
////                let imageView2 = UIImageView(image: image2!)
////                imageView2.frame = CGRect(x: 95, y: 45, width: 40, height: 40)
////                self.view.addSubview(imageView2)
////                self.view.bringSubviewToFront(imageView2)
//        } else {
//                self.salesTaxTxt2.text?.removeAll()
//                salesTaxTxt2.insertText("0.00")
//                detail2.text = "Select Country"
//                //Imageview on Top of View
////                 let imageName2 = "world.png"
////                 let image2 = UIImage(named: imageName2)
////                 let imageView2 = UIImageView(image: image2!)
////                 imageView2.frame = CGRect(x: 95, y: 45, width: 40, height: 40)
////                 self.view.addSubview(imageView2)
////                 self.view.bringSubviewToFront(imageView2)
//
//        }
//    }

    
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




    @IBAction func calculateTotalPrice(_ sender: Any) {
    //creating alert in case of empty values
        let alert = UIAlertController(title: "Error", message: "Please enter valid number!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            print("OK is pressed")
            // after pressing OK button the totalPrice field is cleared
            self.totalPriceLbl.text?.removeAll()
        }))

    //  let is an variable, we need to convert text into number with 'Double' > decimals
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!

        if (price.isLess(than: 0.00) == true || price.isEqual(to: 0)) {
            present(alert, animated: true, completion: nil)
        } else if (salesTax.isLess(than: 0.00) == true || salesTax.isEqual(to: 0)) {
            present(alert, animated: true, completion: nil)
        }

        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax

        //  we're converting a number into a string > string interpolation
        totalPriceLbl.text = "€\(totalPrice)"
    }


    @IBAction func calculateTotalPrice2(_ sender: Any) {
        let alert = UIAlertController(title: "Error", message: "Please enter valid number!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            print("OK is pressed")
            // after pressing OK button the totalPrice field is cleared
            self.totalPriceLbl2.text?.removeAll()
        }))

        //  let is an variable, we need to convert text into number with 'Double' > decimals
            let price2 = Double(priceTxt2.text!)!
            let salesTax2 = Double(salesTaxTxt2.text!)!

        if (price2.isLess(than: 0.00) == true || price2.isEqual(to: 0)) {
            present(alert, animated: true, completion: nil)
        } else if (salesTax2.isLess(than: 0.00) == true || salesTax2.isEqual(to: 0)) {
            present(alert, animated: true, completion: nil)
        }


        let totalSalesTax2 = price2 * salesTax2
        let totalPrice2 = price2 + totalSalesTax2

        //  we're converting a number into a string > string interpolation
        totalPriceLbl2.text = "€\(totalPrice2)"
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

//// Is loaded whenever our screen is loaded everytime
//        override func viewDidLoad() {
//            super.viewDidLoad()
//        // to set the label on a empty string by every load
//            totalPriceLbl.text = ""
//            priceTxt.text = ""
//            salesTaxTxt.text = "0.00"
//            totalPriceLbl2.text = ""
//            priceTxt2.text = ""
//            salesTaxTxt2.text = "0.00"
//        // hide keyboard with every load
//            self.HideKeyboard()
//            view.backgroundColor = .lightGray
//    //     self.okButton.addTarget(self, action: #selector(createAlert), for: .touchUpInside)
//            //Imageview on Top of View
////             let imageName = "world.png"
////             let image = UIImage(named: imageName)
////             let imageView = UIImageView(image: image!)
////             imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
////             self.view.addSubview(imageView)
////             self.view.bringSubviewToFront(imageView)
////
////            let imageName2 = "world.png"
////            let image2 = UIImage(named: imageName2)
////            let imageView2 = UIImageView(image: image2!)
////            imageView.frame = CGRect(x: 65, y: 45, width: 40, height: 40)
////            self.view.addSubview(imageView2)
////            self.view.bringSubviewToFront(imageView2)
////            pickerView.dataSource = self
////            pickerView.delegate = self
//
//        }
//
    @IBAction func handleSelection(_ sender: UIButton) {
    }


//
////    @IBAction func taxNL(_ sender: Any) {
////        salesTaxTxt.text?.removeAll()
////        salesTaxTxt.insertText("0.21")
////
////    }
////
////    @IBOutlet weak var taxFR: UIButton!{
////    didSet {
////        taxFR.accessibilityIdentifier = "taxFR"
////        }
////
////    }
////
////    @IBAction func taxFR(_ sender: Any) {
////        salesTaxTxt.text?.removeAll()
////        salesTaxTxt.insertText("0.20")
////
////    }
//
//
//
}
//
//
//
//
