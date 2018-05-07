import XCTest
@testable import libGopherTests

XCTMain([
    testCase(GopherURLTests.allTests),
    testCase(GopherProtocolTests.allTests),
    testCase(GopherRequestsTests.allTests)
])
