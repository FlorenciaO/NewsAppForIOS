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
    @Published var isLoading = true
    
    // TODO: Replace with DI pattern
    private let repository: RepositoryProtocol = Repository()
    
    var filteredItems: [NewsItemModel] {
        guard !searchByTitle.isEmpty else { return items }
        return items.filter { $0.title.localizedCaseInsensitiveContains(searchByTitle) }
    }
    
    func onAppear() {
        Task {
            do {
                let items = try await repository.getNews()
                self.items = items.map { entity in
                    NewsItemModel(title: entity.title, author: entity.author, dateTime: entity.dateTime)
                }
            } catch {
                // TODO: handle error
            }
        }
        isLoading = false
    }
}
