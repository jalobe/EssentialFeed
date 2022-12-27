//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Lottermoser, Jan on 28.10.22.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    /// Fetch a url using HTTP and the GET method.
    /// - Parameters:
    ///   - url: The url to fetch
    ///   - completion: The completion handler can be invoked in any thread. Clients are responsible to dispatch appropriate threads, if needed.
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
