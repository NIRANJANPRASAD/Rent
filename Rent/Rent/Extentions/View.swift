//
//  View.swift
//  Rent
//
//  Created by Niranjan on 05/05/21.
//

import UIKit
extension UIApplication {
  func endTextEditing() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                    to: nil, from: nil, for: nil)
  }
}
