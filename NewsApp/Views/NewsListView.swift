//
//  UserListView.swift
//  NewsApp
//
//  Created by Florencia Olivera on 29/08/2024.
//

import SwiftUI

struct NewsListView: View {
    
    @State var searchByTitle = ""
    @State var items: [NewsItemModel] = [
        NewsItemModel(title: "Title 1", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"),
        NewsItemModel(title: "Title 2", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"),
        NewsItemModel(title: "Title 3", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"),
    ]
    var filteredItems: [NewsItemModel] {
        guard !searchByTitle.isEmpty else { return items }
        return items.filter { $0.title.localizedCaseInsensitiveContains(searchByTitle) }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredItems, id: \.id) { item in
                    NewsRowView(item: item)
                }
            }
            .navigationTitle("World News")
            .searchable(text: $searchByTitle, prompt: "Search by title")
        }
    }
}

#Preview {
    NewsListView()
}
