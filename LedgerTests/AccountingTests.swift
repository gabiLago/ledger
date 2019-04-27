//
//  AccountingTests.swift
//  LedgerTests
//
//  Created by Gabriel Lago Blasco on 25/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import XCTest

class AccountingTests: XCTestCase {

    let fiveEuros = Value(amount: 5, currency: "EUR")
    let tenDollars = Value(amount: 10.0, currency: "USD")
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCreation() {
        XCTAssertNotNil(AccountingRecord.cashRecord(value: fiveEuros))
        XCTAssertNotNil(AccountingRecord.inventoryRecord(value: tenDollars))
    }
    
    func testEquality(){
        let cash1 = AccountingRecord.cashRecord(value: fiveEuros)
        let cash2 = AccountingRecord.cashRecord(value: fiveEuros)
        let cash3 = AccountingRecord.cashRecord(value: tenDollars)
    
        XCTAssertEqual(cash1, cash2)
        XCTAssertNotEqual(cash2, cash3)
        
    }
}

