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
    
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        application.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    
    func testElements() {
        XCTAssertTrue(priceLabelFirst.exists)
        XCTAssertTrue(priceLabel2First.exists)
    }
    
    
    func testPriceAlertMessageZeroNumber() {
        
        priceLabelFirst.clearAndEnterText(text: "0")
        priceLabel2First.clearAndEnterText(text: "0")
        button.tap()
        XCTAssertTrue(alert3.exists)
        XCTAssertTrue(alert4.exists)
        
    }
    
    func testAlertTaxCountryFields() {
        priceLabelFirst.clearAndEnterText(text: "200")
        priceLabel2First.clearAndEnterText(text: "400")
        button.tap()
        
        XCTAssertTrue(alert2.exists)
    }
    
    func testAlertEmptyPriceFields() {
        application.pickerWheels["Select Country1"].adjust(toPickerWheelValue: "France")
        application.pickerWheels["Select Country2"].adjust(toPickerWheelValue: "Netherlands")
        
        button.tap()
        XCTAssertTrue(alert1.exists)
    }
    
    func testAlertSameCountries() {
        application.pickerWheels["Select Country1"].adjust(toPickerWheelValue: "Netherlands")
        application.pickerWheels["Select Country2"].adjust(toPickerWheelValue: "Netherlands")
        priceLabelFirst.clearAndEnterText(text: "200")
        priceLabel2First.clearAndEnterText(text: "400")
        
        button.tap()
        XCTAssertTrue(alert5.exists)
        XCTAssertTrue(alert6.exists)
    }
    
    func testCalculation1() {
        application.pickerWheels["Select Country1"].adjust(toPickerWheelValue: "France")
        application.pickerWheels["Select Country2"].adjust(toPickerWheelValue: "Netherlands")
        priceLabelFirst.clearAndEnterText(text: "200")
        priceLabel2First.clearAndEnterText(text: "400")
        button.tap()
        
        XCTAssertTrue(priceLabelSecond.label == "Price1: €240.0")
        XCTAssertTrue(priceLabel2Second.label == "Price2: €484.0")
        XCTAssertTrue(priceDifferenceSecond.label == "Difference: €-244.00")
        
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
