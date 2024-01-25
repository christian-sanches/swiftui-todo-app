//
//  ListRowView.swift
//  Griss Tasks
//
//  Created by Christian Sanches on 25/01/24.
//

import SwiftUI

struct ListRowView: View {
    
    /*
     variables that are not @State must have its
     params provided, unless it is said otherwise.
     */
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "this is the first title")
}
