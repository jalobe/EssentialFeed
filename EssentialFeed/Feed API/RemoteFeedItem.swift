//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Lottermoser, Jan on 22.11.22.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
