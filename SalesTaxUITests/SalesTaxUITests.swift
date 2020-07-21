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
    let taxCountry = XCUIApplication().textFields["TaxCountry"]
    let priceLabel = XCUIApplication().textFields ["Price"]
    let taxLabel = XCUIApplication().textFields ["SalesTax"]
    let totalLabel = XCUIApplication().staticTexts["TotalPrice"]
    let okButton = XCUIApplication().staticTexts["OK"]
    
    
    
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
        XCTAssertTrue(taxCountry.exists)
        XCTAssertTrue(okButton.exists)
        
    }
    
    func testTaxCalculationNetherlands() {
        
        let country = "Netherlands"
        
        taxCountry.tap()
        taxCountry.typeText(country)
        priceLabel.tap()
        priceLabel.typeText("200").self
        
        taxLabel.tap()
        if (country == "Netherlands"){
            taxLabel.typeText("0.21").self
        } else if (country == "France"){
            taxLabel.typeText("0.20").self
        }
        
        eurosign.tap()
        button.tap()
        
        if let contentTotal = totalLabel.value as? Double {
            XCTAssert(contentTotal.isEqual(to: 242.00))
        }
        
    }
    
    func testTaxCalculationFrance() {
        
        let country = "France"
        
        taxCountry.tap()
        taxCountry.typeText(country)
        priceLabel.tap()
        priceLabel.typeText("200").self
        
        taxLabel.tap()
        if (country == "Netherlands"){
            taxLabel.typeText("0.21").self
        } else if (country == "France"){
            taxLabel.typeText("0.20").self
        }
        
        eurosign.tap()
        button.tap()
        
        if let contentTotal = totalLabel.value as? Double {
            XCTAssert(contentTotal.isEqual(to: 242.00))
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
