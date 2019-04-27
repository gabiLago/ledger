//
//  ValueTest.swift
//  LedgerTests
//
//  Created by Gabriel Lago Blasco on 25/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import XCTest

class ValueTest: XCTestCase {

    let fiveEuros = Value(amount: 5.0, currency: "EUR")
    let dollars = Value(amount: 42.0, currency: Currency(code:"USD"))
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testCreation(){
        XCTAssertNotNil(fiveEuros)
        XCTAssertNotNil(dollars)
    }
    
    func testEquality(){
        XCTAssertEqual(Value(amount: 5.0, currency: "EUR"), Value(amount: 5.0, currency: "EUR"))
        
         XCTAssertNotEqual(Value(amount: 5.9, currency: "EUR"), Value(amount: 5.0, currency: "EUR"))
    }
    
    func testHashable(){
        XCTAssertEqual(Value(amount: 5.0, currency: "EUR").hashValue, Value(amount: 5.0, currency: "EUR").hashValue)
        
        XCTAssertNotEqual(Value(amount: 5.9, currency: "EUR").hashValue, Value(amount: 5.0, currency: "EUR").hashValue)
    }
    
    

}
