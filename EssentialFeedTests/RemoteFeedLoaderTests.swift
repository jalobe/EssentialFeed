//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Lottermoser, Jan on 02.10.22.
//

import XCTest
import EssentialFeed

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    
    private init() {}
    
    var requestedURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_laod_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
}
