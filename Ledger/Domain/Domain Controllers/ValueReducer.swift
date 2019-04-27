//
//  ValueReducer.swift
//  Ledger
//
//  Created by Gabriel Lago Blasco on 26/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import Foundation

func valueReducer(values: [Value], toCurrency: Currency) -> Value {

    let convertedAmounts = values.map { DummyConverter.shared.pivotUsdCurrencyConverted(value: $0)}
    
    return Value(amount: convertedAmounts.reduce(0, +), currency: "USD")    
}



