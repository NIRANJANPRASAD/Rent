//
//  TextField.swift
//  Rent
//
//  Created by Niranjan on 05/05/21.
//

import UIKit
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    let nextTag = textField.tag + 1
    if let nextResponder = textField.superview?.viewWithTag(nextTag) {
        nextResponder.becomeFirstResponder()
    } else {
        textField.resignFirstResponder()
    }
    return true
}
