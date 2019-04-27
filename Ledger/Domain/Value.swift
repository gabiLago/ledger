//
//  Value.swift
//  Ledger
//
//  Created by Gabriel Lago Blasco on 25/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import Foundation

class Value {
    let amount: Double
    let currency: Currency
    
    init(amount: Double, currency: Currency){
        self.amount = amount
        self.currency = currency
    }
    
    convenience init(amount: Double, currency code: ISO4217) {
        self.init(amount: amount, currency: Currency(code: code))
    }
}

extension Value: Equatable {
    static func == (lhs: Value, rhs: Value) -> Bool{
        return (lhs.amount, lhs.currency) == (rhs.amount, rhs.currency)
    }
}

extension Value: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(amount)
        hasher.combine(currency)
    }
}


