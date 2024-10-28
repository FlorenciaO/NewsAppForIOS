//
//  UserListView.swift
//  NewsApp
//
//  Created by Florencia Olivera on 29/08/2024.
//

import SwiftUI

struct NewsListView: View {
    
    // TODO: Replace with DI pattern
    @StateObject private var viewModel: NewsListViewModel = NewsListViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                if viewModel.isLoading {
                    Text("Loading...")
                } else {
                    List {
                        ForEach(viewModel.filteredItems, id: \.id) { item in
                            NewsRowView(item: item)
                        }
                    }
                }
            }
            .navigationTitle("World News")
            .searchable(text: $viewModel.searchByTitle, prompt: "Search by title")
        }.onAppear {
            viewModel.onAppear()
        }
    }
}

#Preview {
    NewsListView()
}
