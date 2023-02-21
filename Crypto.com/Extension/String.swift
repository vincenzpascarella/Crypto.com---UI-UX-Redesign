//
//  String.swift
//  Crypto.com
//
//  Created by Vincenzo Pascarella on 14/12/21.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
