//
//  GopherRequestsTests.swift
//  libGopherTests
//
//  Created by Victor Jalencas on 06/05/2018.
//  Copyright © 2018 Hand-Forged. All rights reserved.
//

import XCTest
@testable import libGopher

class GopherRequestsTests: XCTestCase {
    let sampleURL = "gopher://mockhost.com"
    let shared = URLSession.shared

    override func setUp() {
        URLProtocol.registerClass(GopherURLProtocol.self)
    }
    
    func testSimpleGopherRequest() {
        guard let url = URL(string: sampleURL) else {
            XCTFail("URL should be able to be constructed")
            return
        }
        
        let task = shared.dataTask(with: url) { data, response, error in

        }
        task.resume()
    }
    
    static var allTests = [
        ("testSimpleGopherRequest", testSimpleGopherRequest)
    ]
}
