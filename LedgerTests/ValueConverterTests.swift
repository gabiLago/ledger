//
//  ValueConverterTests.swift
//  LedgerTests
//
//  Created by Gabriel Lago Blasco on 26/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import XCTest

class ValueConverterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testConvertToSameCurrency() {
        let dollar = Currency(code: "USD")
        let five = Value(amount: 5, currency: dollar)
        
        XCTAssertEqual(five, DummyConverter.shared.convert(value: five, toCurrency: dollar))
    }
    
    func testConvertToDifferentCurrency(){
        let dollar = Currency(code: "USD")
        let euro = Currency(code: "EUR")
        
        let ten = Value(amount: 10, currency: euro)
        let five = Value(amount: 5, currency: dollar)
        
        XCTAssertEqual(five, DummyConverter.shared.convert(value: ten, toCurrency: dollar))
    }
}

