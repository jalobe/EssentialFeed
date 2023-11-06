//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Lottermoser, Jan on 02.10.22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
