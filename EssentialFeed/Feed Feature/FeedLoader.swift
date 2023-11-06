//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Lottermoser, Jan on 02.10.22.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
