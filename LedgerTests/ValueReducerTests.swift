//
//  ValueReducerTests.swift
//  LedgerTests
//
//  Created by Gabriel Lago Blasco on 26/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import XCTest

class ValueReducerTests: XCTestCase {

    let fiveEuros = Value(amount: 5, currency: "EUR")
    let tenDollars = Value(amount: 10.0, currency: "USD")
    let valuesArray = [Value(amount: 5, currency: "EUR"), Value(amount: 10.0, currency: "USD"), Value(amount: 5, currency: "EUR")]
   
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testReduceValuesDifferentCurrencies() {
        
        XCTAssertEqual(valueReducer(values: valuesArray, toCurrency: Currency(code: "USD") ), Value(amount: 15, currency: "USD") )

        XCTAssertNotEqual(valueReducer(values: valuesArray, toCurrency: Currency(code: "USD") ), Value(amount: 12.5, currency: "USD") )
      
    }
    
    
}
