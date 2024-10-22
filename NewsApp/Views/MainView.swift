//
//  MainView.swift
//  NewsApp
//
//  Created by Florencia Olivera on 22/10/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NewsListView()
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
            UserListView()
                .tabItem {
                    Label("Users", systemImage: "person.3")
                }
        }
    }
}

#Preview {
    MainView()
}
