//
//  NewsItemModel.swift
//  NewsApp
//
//  Created by Florencia Olivera on 22/10/2024.
//

import Foundation

struct NewsItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let author: String
    let dateTime: String
    // TODO: Change for an URL image
    let image: String = "newspaper"
}
