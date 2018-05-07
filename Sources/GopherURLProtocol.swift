//
//  GopherURLProtocol.swift
//  libGopher
//
//  Created by Victor Jalencas on 06/05/2018.
//  Copyright © 2018 Hand-Forged. All rights reserved.
//

import Foundation

class GopherURLProtocol: URLProtocol {
    override class func canInit(with request: URLRequest) -> Bool {
        return request.url?.scheme == "gopher"
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }

    override func startLoading() {
        
    }
}
