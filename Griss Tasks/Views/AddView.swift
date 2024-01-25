//
//  AddView.swift
//  Griss Tasks
//
//  Created by Christian Sanches on 25/01/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.Resolved(red: 0.9, green: 0.9, blue: 0.9))
                    .cornerRadius(8)
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(Color(.white))
                        .frame(height: 55)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color.accentColor)
                        .cornerRadius(8)
                        .font(.headline)
                })

            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖋️")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
