//
//  NewsRowView.swift
//  NewsApp
//
//  Created by Florencia Olivera on 29/08/2024.
//

import SwiftUI

struct NewsRowView: View {
    
    let item: NewsItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .resizable()
                .frame(width: 32.0, height: 32.0)
                .padding([.trailing], 8)
            VStack(alignment: .leading) {
                Text(item.title)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(item.description)
                    .font(.body)
            }
        }
    }
}

#Preview {
    NewsRowView(item: NewsItemModel(title: "Title 1", author: "Author", dateTime: "MM/dd/yyyy hh:mm:ss"))
}
