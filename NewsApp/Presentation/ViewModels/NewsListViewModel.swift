//
//  NewsListViewModel.swift
//  NewsApp
//
//  Created by Florencia Olivera on 23/10/2024.
//

import Foundation

class NewsListViewModel: ObservableObject {
    @Published var items: [NewsItemModel] = []
    @Published var searchByTitle = ""
    
    var filteredItems: [NewsItemModel] {
        guard !searchByTitle.isEmpty else { return items }
        return items.filter { $0.title.localizedCaseInsensitiveContains(searchByTitle) }
    }
    
    func onAppear() {
        let newItems = [
            NewsItemModel(title: "Title 1", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"),
            NewsItemModel(title: "Title 2", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"),
            NewsItemModel(title: "Title 3", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"),
        ]
        items.append(contentsOf: newItems)
    }
}
