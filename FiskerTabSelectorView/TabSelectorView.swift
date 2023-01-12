//
//  ContentView.swift
//  FiskerTabSelectorView
//
//  Created by Hari Krishna Bista on 1/11/23.
//

import SwiftUI

struct TabSelectorView: View {
    var items: [TabSelectorItem] = [
        TabSelectorItem(index: 0, title: "First"),
        TabSelectorItem(index: 1, title: "Second"),
        TabSelectorItem(index: 2, title: "Third")
    ]
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                ForEach(items) { item in
                    TabSelectorItemView(
                        item: item,
                        selectedIndex: $selectedIndex
                    )
                }
            }
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.gray)
        }
    }
}

struct TabSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        TabSelectorView(selectedIndex: .constant(0))
            .background(Color.purple)
            .frame(height: 100)
    }
}
