//
//  TestView.swift
//  FiskerTabSelectorView
//
//  Created by Hari Krishna Bista on 1/11/23.
//

import SwiftUI

struct TabSelectorTestView: View {
    var items: [TabSelectorItem] = [
        TabSelectorItem(index: 0, title: "Sport"),
        TabSelectorItem(index: 1, title: "Extreme"),
        TabSelectorItem(index: 2, title: "Ultra")
    ]

    @State private var selectedIndex = 0
    
    var body: some View {
        VStack {
            TabSelectorView(
                items: items,
                selectedIndex: $selectedIndex
            )
            .frame(height: 60)
            
            Spacer()
            
            Text("selectedIndex: \(selectedIndex)")
        }
        .padding(.vertical, 100)
    }
}

struct TabSelectorTestView_Previews: PreviewProvider {
    static var previews: some View {
        TabSelectorTestView()
    }
}
