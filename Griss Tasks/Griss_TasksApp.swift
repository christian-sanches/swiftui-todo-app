//
//  Griss_TasksApp.swift
//  Griss Tasks
//
//  Created by Christian Sanches on 25/01/24.
//

import SwiftUI

/*
 MVVM Arch
 
  Model - data point
  View - UI
  VielModel - manages models for View
 
 */

@main
struct Griss_TasksApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
