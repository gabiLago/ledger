//
//  CategoryTests.swift
//  LedgerTests
//
//  Created by Gabriel Lago Blasco on 25/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import XCTest

class CategoryTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCreation() {
        for each in Category.allCases{
            XCTAssertNotNil(each)
        }
    }
    
    func testEquality(){
        XCTAssertEqual(Category.assets, Category.assets)
        XCTAssertNotEqual(Category.assets, Category.ownersEquity)
    }

    func testHashable(){
        XCTAssertEqual(Category.assets.hashValue, Category.assets.hashValue)
        XCTAssertNotEqual(Category.assets.hashValue, Category.ownersEquity.hashValue)
    }
}
