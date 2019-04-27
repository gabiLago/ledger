//
//  Currency.swift
//  Ledger
//
//  Created by Gabriel Lago Blasco on 25/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import Foundation

typealias ISO4217 = String

struct Currency: Hashable {
    let code : ISO4217
    
    init(code: ISO4217) {
        self.code = code.uppercased()
    }
}

extension Currency: Equatable{
    static func == (lhs: Currency, rhs: Currency) -> Bool {
        return lhs.code == rhs.code
    }
}

extension Currency: CustomDebugStringConvertible {
    var debugDescription: String{
        return "<\(type(of:self)): \(code)>"
    }
}




