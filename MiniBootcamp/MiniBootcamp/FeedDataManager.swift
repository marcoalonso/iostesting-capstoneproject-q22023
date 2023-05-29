//
//  FeedDataManager.swift
//  MiniBootcamp
//
//  Created by Marco Alonso Rodriguez on 28/05/23.
//

import Foundation

protocol FeedDataManagerProtocol {
    func fetch(completion: (Result<[TweetCellViewModel], Error>) -> Void)
}

class FeedDataManager: FeedDataManagerProtocol {
    func fetch(completion: (Result<[TweetCellViewModel], Error>) -> Void) {
        completion(.failure(NSError(domain: "", code: 0)))
    }
}
