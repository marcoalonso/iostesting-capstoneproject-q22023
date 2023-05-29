//
//  FeedViewModel.swift
//  MiniBootcamp
//
//  Created by Marco Alonso Rodriguez on 24/05/23.
//

import Foundation
import UIKit

class FeedViewModel {
    let title: String
    var backgroundColor: UIColor? = .white

    let observer: Observer<FetchState> = Observer<FetchState>()
    
    var bind: ((FetchState?) -> Void)? {
           didSet {
               observer.bind(bind)
           }
       }

    init(title: String = "TweetFeed") {
        self.title = title
    }
    
    func fetchTimeline() {
        observer.updateValue(with: .failure)
       }
}
