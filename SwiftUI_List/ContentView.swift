//
//  ContentView.swift
//  SwiftUI_List
//
//  Created by Anmol Maheshwari on 03/05/20.
//  Copyright © 2020 Anmol Maheshwari. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    let title, value, imageName: String
}

struct ContentView: View {
    var users: [User] = [
        .init(id: 0, title: "First Name", value: "Anmol", imageName: "Anmol"),
        .init(id: 1, title: "Last Name", value: "Maheshwari", imageName: "AnmolM"),
        .init(id: 2, title: "Programming Language", value: "SwiftUI", imageName: "Anmol"),
        .init(id: 3, title: "Project Name", value: "SwiftUI_List", imageName: "AnmolM")
    ]
    
    var body: some View {
        NavigationView {
            List {
                Text("Users").font(.largeTitle)
                ForEach(users, id: \.id) { user in
                    HStack {
                        Image(user.imageName)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 2.0))
                        VStack (alignment: .leading) {
                            Text(user.title).font(.headline)
                            Text(user.value).font(.subheadline)
                        }
                    }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
                }.navigationBarTitle(Text("Dynamic List"))
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
