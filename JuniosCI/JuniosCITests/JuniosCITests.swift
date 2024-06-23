//
//  JuniosCITests.swift
//  JuniosCITests
//
//  Created by 최준영 on 6/24/24.
//

import XCTest
@testable import JuniosCI

final class JuniosCITests: XCTestCase {

    func testExample() throws {
        
        #if Failure
            XCTFail()
        #endif
            
        #if Success
            XCTAssertTrue(true)
        #endif
    }

}
