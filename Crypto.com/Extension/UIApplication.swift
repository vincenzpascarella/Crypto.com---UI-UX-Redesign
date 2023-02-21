//
//  UIApplication.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
