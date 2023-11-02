//
//  Home.swift
//  ToDo
//
//  Created by csuftitan on 11/2/23.
//

import SwiftUI

struct Home: View {
    @Environment(\.self) private var env
    @State private var filterDate: Date = .init()
    @State private var showPendingTask: Bool = true
    @State private var showCompletedTask: Bool = true
    var body: some View {
        List{
            DatePicker(selection: $filterDate, displayedComponents: [.date]){
                
            }
            .labelsHidden()
            .datePickerStyle(.graphical)
            
            DisclosureGroup(isExpanded: $showPendingTask) {
                    
                } label: { Text("Pending Tasks")
                    .font(.caption).foregroundColor(.blue) }
            
            DisclosureGroup(isExpanded: $showCompletedTask) {
                    
                } label: { Text("Completed Tasks")
                    .font(.caption).foregroundColor(.gray) }
        }
    }
}

#Preview {
    ContentView()
}
