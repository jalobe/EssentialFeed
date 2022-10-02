//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Lottermoser, Jan on 02.10.22.
//

import XCTest
import EssentialFeed

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init() {
        let client = HTTPClient()
        let sut = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
}
