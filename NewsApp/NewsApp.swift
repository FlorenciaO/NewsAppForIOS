//
//  NewsAppApp.swift
//  NewsApp
//
//  Created by Florencia Olivera on 28/08/2024.
//

import SwiftUI

@main
struct NewsApp: App {
    
    init() {
        UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
