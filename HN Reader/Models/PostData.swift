//
//  PostData.swift
//  HN Reader
//
//  Created by Peggy Wollenhaupt on 7/16/20.
//  Copyright © 2020 Peggy Wollenhaupt. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
