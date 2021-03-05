//
//  SalesTaxReference.swift
//  SalesTaxUITests
//
//  Created by Fatih Topcuoglu on 05/03/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import Foundation
import XCTest
import UIKit


    let application:XCUIApplication = XCUIApplication()
    
    let priceLabelFirst = XCUIApplication().textFields["FirstPriceOne"]
    let priceLabel2First = XCUIApplication().textFields["FirstPriceTwo"]
    
    let priceLabelSecond = XCUIApplication().staticTexts["SecondPriceOne"]
    let priceLabel2Second = XCUIApplication().staticTexts["SecondPriceTwo"]
    let priceDifferenceSecond = XCUIApplication().staticTexts["differencePrices"]
    
    
    let button = XCUIApplication().buttons["Calculate"]
    let alert1 = XCUIApplication().alerts["Empty Price Fields"]
    let alert2 = XCUIApplication().alerts["Choose Country"]
    let alert3 = XCUIApplication().alerts.element.staticTexts["Enter Price"]
    let alert4 = XCUIApplication().alerts.element.staticTexts["Zero or negative numbers are not allowed!"]
    let alert5 = XCUIApplication().alerts["Countries are the Same"]
    let alert6 = XCUIApplication().alerts.element.staticTexts["Choose different countries!"]

