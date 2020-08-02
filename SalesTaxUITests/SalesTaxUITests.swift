//
//  SalesTaxUITests.swift
//  SalesTaxUITests
//
//  Created by Fatih Topcuoglu on 17/07/2020.
//  Copyright © 2020 Fatih Topcuoglu. All rights reserved.
//

import XCTest
import UIKit

class SalesTaxUITests: XCTestCase {
    
    
    let application:XCUIApplication = XCUIApplication()
    
    let button = XCUIApplication().buttons["CALCULATE"]
    let eurosign = XCUIApplication().images["EuroSign"]
    let taxCountry = XCUIApplication().textFields["Select Country"]
    let priceLabel = XCUIApplication().textFields ["Price"]
    let taxLabel = XCUIApplication().textFields ["SalesTax"]
    let totalLabel = XCUIApplication().staticTexts["TotalPrice"]
    let okButton = XCUIApplication().staticTexts["OK"]
    let taxButtonFR = XCUIApplication().buttons["FR"]
    let taxButtonNL = XCUIApplication().buttons["NL"]
    let alert = XCUIApplication().alerts["Error"]
    let dropdown = XCUIApplication().pickers



    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    
    func testElements() {
        
        XCTAssertNotNil(priceLabel)
        XCTAssertTrue(priceLabel.exists)
        XCTAssertNotNil(taxLabel)
        XCTAssertTrue(taxLabel.exists)
        XCTAssertNotNil(totalLabel)
        XCTAssertTrue(totalLabel.exists)
        XCTAssertNotNil(taxCountry)
        XCTAssertNotNil(dropdown)

    }
    
     func testPriceAlertMessage() {
    
         priceLabel.tap()
         priceLabel.typeText("-1").self
         button.tap()
         XCTAssertTrue(alert.exists)

     }
    
    func testTaxCalculationFrance() {
   
        priceLabel.tap()
        priceLabel.typeText("200")
        application.pickerWheels["Select Country"].adjust(toPickerWheelValue: "FR")
        button.tap()
        
        if let contentTotal = totalLabel.value as? Double {
            XCTAssert(contentTotal.isEqual(to: 242.00))
        }
    }
    
    func testTaxCalculationNetherlands() {
        
        priceLabel.tap()
        priceLabel.typeText("200")
        application.pickerWheels["Select Country"].adjust(toPickerWheelValue: "NL")
        button.tap()
        
        if let contentTotal = totalLabel.value as? Double {
            XCTAssert(contentTotal.isEqual(to: 242.00))
        }
        
    }
    
    func testTaxCalculationDenmark() {
        
        priceLabel.tap()
        priceLabel.typeText("200")
        application.pickerWheels["Select Country"].adjust(toPickerWheelValue: "DE")
        button.tap()
        
        if let contentTotal = totalLabel.value as? Double {
            XCTAssert(contentTotal.isEqual(to: 250.00))
        }
        
    }
    
    
    
    //    func testLaunchPerformance() {
    //        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
    //            application.launch()
    //            // This measures how long it takes to launch your application.
    //            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
    //                XCUIApplication().launch()
    //            }
    //        }
    //    }
}
