//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Lottermoser, Jan on 02.10.22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
