//
//  TestView.swift
//  FiskerTabSelectorView
//
//  Created by Hari Krishna Bista on 1/11/23.
//

import SwiftUI

struct TestView: View {
    var items: [TabSelectorItem] = [
        TabSelectorItem(index: 0, title: "Hari"),
        TabSelectorItem(index: 1, title: "Kishna"),
        TabSelectorItem(index: 2, title: "Bista"),
        TabSelectorItem(index: 3, title: "boka")
    ]

    @State private var selectedIndex = 0
    
    var body: some View {
        VStack {
            TabSelectorView(
                items: items,
                selectedIndex: $selectedIndex
            )
            .frame(height: 100)
            
            Text("selectedIndex: \(selectedIndex)")
            
            Spacer()
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
