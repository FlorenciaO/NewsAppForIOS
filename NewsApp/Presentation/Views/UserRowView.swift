//
//  UserView.swift
//  NewsApp
//
//  Created by Florencia Olivera on 23/10/2024.
//

import SwiftUI

struct UserRowView: View {
    
    let item: UserItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.avatarImage)
                .resizable()
                .frame(width: 32.0, height: 32.0)
                .padding([.trailing], 8)
            VStack(alignment: .leading) {
                Text(item.fullName)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(item.company)
                    .font(.body)
            }
        }
    }
}

#Preview {
    UserRowView(item: UserItemModel(name: "Name", lastName: "Last Name", company: "Company"))
}
