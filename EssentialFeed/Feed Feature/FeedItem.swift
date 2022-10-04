//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Lottermoser, Jan on 02.10.22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
