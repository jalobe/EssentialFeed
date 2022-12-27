//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Lottermoser, Jan on 22.11.22.
//

import Foundation

public enum RetrieveCachedFeedResult {
    case empty
    case found(feed: [LocalFeedImage], timestamp: Date)
    case failure(Error)
}

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    typealias RetrievalCompletion = (RetrieveCachedFeedResult) -> Void
    
    /// Deletes the cached feed if cache is not empty.
    /// - Parameters:
    ///   - completion: The completion handler can be invoked in any thread. Clients are responsible to dispatch appropriate threads, if needed.
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    
    /// Inserts the provided feed into the cache.
    /// - Parameters:
    ///   - feed: The feed to be cached.
    ///   - timestamp: The timestamp of the cache insertion.
    ///   - completion: The completion handler can be invoked in any thread. Clients are responsible to dispatch appropriate threads, if needed.
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
    
    /// Retrieves the cached feed, if available.
    /// - Parameters:
    ///   - completion: The completion handler can be invoked in any thread. Clients are responsible to dispatch appropriate threads, if needed.
    func retrieve(completion: @escaping RetrievalCompletion)
}
