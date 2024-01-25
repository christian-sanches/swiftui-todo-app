//
//  AddView.swift
//  Griss Tasks
//
//  Created by Christian Sanches on 25/01/24.
//

import SwiftUI

struct AddView: View {
    
    /*
     Here we can set a state variable, so we can use it
     to bind on something later
     */
    @State var textFieldText: String = ""
    
    var body: some View {
        // Scroll view so we can scroll the screen if needed
        ScrollView {
            // VStack so the items are aligned vertically... duh.
            // Similar to flex-direction: column;
            VStack {
                // TextField component, to input some text
                TextField("Type something here...",
                          // the '$' sign before the variable is to
                          // bind the variable to the textfield, so,
                          // when the user input some text, we will
                          // have the variable updated.
                          text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    // RGB colors are Float values (0.0 to 1.0)
                    // we can easily put the hex value (0-255)
                    // by dividing one value from the total
                    // E.G.: red: 200/255, green: 15/255, blue: 255/255
                    .background(Color.Resolved(red: 0.9, green: 0.9, blue: 0.9))
                    .cornerRadius(8)
                Button(action: {
                    
                }, label: {
                    // We can manipulate the text as seen on JS (toUppercase())
                    Text("Save".uppercased())
                        .foregroundStyle(Color(.white))
                        .frame(height: 55)
                        // Here, we have a way to set the button to fullWidth
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color.accentColor)
                        .cornerRadius(8)
                        // We have some default font definitions on the Font
                        // variable.
                        // Because the property is already expections something
                        // from Font, we don't need to type it here, just type
                        // the property from it and its good to go.
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
