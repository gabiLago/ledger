//
//  TagTests.swift
//  LedgerTests
//
//  Created by Gabriel Lago Blasco on 25/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import XCTest

class TagTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCreation(){
        for each in Tag.allCases{
            XCTAssertNotNil(each)
        }
    }

    func testEquality() {
        XCTAssertEqual(Tag.cash, Tag.cash)
        XCTAssertNotEqual(Tag.cash, Tag.earnings)
    }
    
    func testHash(){
        XCTAssertEqual(Tag.cash.hashValue, Tag.cash.hashValue)
        XCTAssertNotEqual(Tag.cash.hashValue, Tag.earnings.hashValue)
    }
}

