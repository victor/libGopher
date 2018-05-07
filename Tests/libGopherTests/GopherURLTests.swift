//
//  libGopherTests.swift
//  libGopherTests
//
//  Created by Victor Jalencas on 05/05/2018.
//  Copyright © 2018 Hand-Forged. All rights reserved.
//

import XCTest
@testable import libGopher

class GopherURLTests: XCTestCase {
    let sampleURL = "gopher://gopher.metafilter.com"

    func testCreateGopherURL() {
        let gopherURL = URL(string: sampleURL)
        XCTAssertNotNil(gopherURL)
    }
    
    static var allTests = [
        ("testCreateGopherURL", testCreateGopherURL)
    ]
}

