//
//  CurrencyTest.swift
//  LedgerTests
//
//  Created by Gabriel Lago Blasco on 25/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import XCTest

class CurrencyTest: XCTestCase {

    let euro = Currency(code: "EUR")
    let usd = Currency(code: "USD")
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCreation(){
        XCTAssertNotNil(euro)
        XCTAssertNotNil(usd)
    }
    
    func testCodeConsistency(){
        XCTAssertEqual("USD", Currency(code: "uSd").code)
    }
    
    func testEquality(){
        XCTAssertNotEqual(euro, usd)
        XCTAssertEqual(euro, Currency(code: "EUR"))
    }
    
    func testHashable() {
        XCTAssertNotEqual(euro.hashValue, usd.hashValue)
        XCTAssertEqual(euro.hashValue, Currency(code: "EUR").hashValue)
    }
}
