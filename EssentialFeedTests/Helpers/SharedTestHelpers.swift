//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Lottermoser, Jan on 23.12.22.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}
