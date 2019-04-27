//
//  ValueConverter.swift
//  Ledger
//
//  Created by Gabriel Lago Blasco on 26/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import Foundation

protocol ValueConverter {
    func convert(value: Value, toCurrency: Currency) -> Value
}

struct DummyConverter: ValueConverter {
    
    static let shared = DummyConverter()
    private init(){}
    
    let rate = 0.5
    
    func convert(value: Value, toCurrency: Currency) -> Value {
 
        if value.currency == toCurrency{
            return value
        }

        return Value(amount: value.amount * rate , currency: toCurrency)
    }
    
    
    func pivotUsdCurrencyConverted(value: Value) -> Double {
        
        let extractedValue = convert(value: value, toCurrency: Currency(code: "USD"))
        
        return extractedValue.amount
    }

}
