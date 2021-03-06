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

let alert1 = XCUIApplication().alerts["Empty Price Fields"]
let alert2 = XCUIApplication().alerts["Choose Country"]
let alert3 = XCUIApplication().alerts.element.staticTexts["Enter Price"]
let alert4 = XCUIApplication().alerts.element.staticTexts["Zero or negative numbers are not allowed!"]
let alert5 = XCUIApplication().alerts["Countries are the Same"]
let alert6 = XCUIApplication().alerts.element.staticTexts["Choose different countries!"]

