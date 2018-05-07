//
//  GopherProtocolTests.swift
//  libGopherTests
//
//  Created by Victor Jalencas on 06/05/2018.
//  Copyright © 2018 Hand-Forged. All rights reserved.
//

import XCTest
@testable import libGopher

class GopherProtocolTests: XCTestCase {
    let sampleURL = "gopher://gopher.metafilter.com"

    func testCanHandleGopherRequests() {
        let r = URLRequest(url: URL(string: "gopher://gopher.metafilter.com:71/")!)
        XCTAssertTrue(GopherURLProtocol.canInit(with: r))
    }

    func testCanHandleGopherRequestsWithExplicitPort() {
        let r = URLRequest(url: URL(string: sampleURL)!)
        XCTAssertTrue(GopherURLProtocol.canInit(with: r))
    }

    func testCantHandleOtherRequests() {
        let r = URLRequest(url: URL(string: "http://gopher.metafilter.com/")!)
        XCTAssertFalse(GopherURLProtocol.canInit(with: r))
    }
    
    static var allTests = [
        ("testCanHandleGopherRequests", testCanHandleGopherRequests),
        ("testCanHandleGopherRequestsWithExplicitPort", testCanHandleGopherRequestsWithExplicitPort),
        ("testCantHandleOtherRequests", testCantHandleOtherRequests),
        ("testCantHandleOtherRequests", testCantHandleOtherRequests)
    ]
}
