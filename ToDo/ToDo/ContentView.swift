//
//  ContentView.swift
//  ToDo
//
//  Created by csuftitan on 11/2/23.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        NavigationStack{
            Home()
                .navigationTitle("To-Do")
        }
    }

}

#Preview {
    ContentView()
}
