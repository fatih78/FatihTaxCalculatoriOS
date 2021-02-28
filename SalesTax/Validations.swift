//
//  Validations.swift
//  SalesTax
//
//  Created by Fatih Topcuoglu on 28/02/2021.
//  Copyright © 2021 Fatih Topcuoglu. All rights reserved.
//

import Foundation
import UIKit

class Validations {
    
    public func numberValidation(number: String) -> Bool {
        let numberberRegex = "^(?:|0|[1-9]\\d*)(?:\\.\\d*)?$"
        let trimmedString = number.trimmingCharacters(in: .whitespaces)
        let validateNumber = NSPredicate(format: "SELF MATCHES %@", numberberRegex)
        let isValidNumber = validateNumber.evaluate(with: trimmedString)
        return isValidNumber
    }
    
}
