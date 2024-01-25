//
//  ListView.swift
//  Griss Tasks
//
//  Created by Christian Sanches on 25/01/24.
//

import SwiftUI

struct ListView: View {
    
    // App state variable
    @State var items: [String] = [
        "First item",
        "Second item",
        "Third item"
    ]
    
    var body: some View {
        // List component
        List {
            // For loop iteration
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List 📝")
        .navigationBarItems(
            // Before, it was trowing some errors, because 'EditButton()'
            // didn't exists on MacOS (only iOS).
            // Intresting...
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView()))
    }
}

/*
 Every view can have a preview for XCode to render
 */
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


