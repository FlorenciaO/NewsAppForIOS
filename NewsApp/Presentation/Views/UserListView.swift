//
//  UserListView.swift
//  NewsApp
//
//  Created by Florencia Olivera on 22/10/2024.
//

import SwiftUI

struct UserListView: View {
    
    // TODO: Replace with DI pattern
    @StateObject private var viewModel: UserListViewModel = UserListViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                if viewModel.isLoading {
                    Text("Loading...")
                } else {
                    List {
                        ForEach(viewModel.users, id: \.id) { item in
                            UserRowView(item: item)
                        }
                    }
                }
            }
            .navigationTitle("Get to know our publishers")
        }.onAppear {
            viewModel.onAppear()
        }
    }
}

#Preview {
    UserListView()
}
