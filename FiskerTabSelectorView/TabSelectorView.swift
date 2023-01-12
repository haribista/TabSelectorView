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
    var selectedTitleColor: Color = Color.black
    var unselectedTitleColor: Color = Color.gray
    var titleFont: Font = Font.system(
        size: 16,
        weight: Font.Weight.bold
    )
    var underlineColor: Color = Color.orange
    var underlineViewHeight: CGFloat = 2.0

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                ForEach(items) { item in
                    TabSelectorItemView(
                        item: item,
                        selectedIndex: $selectedIndex,
                        selectedTitleColor: selectedTitleColor,
                        unselectedTitleColor: unselectedTitleColor,
                        titleFont: titleFont,
                        underlineColor: underlineColor,
                        underlineViewHeight: underlineViewHeight
                    )
                }
            }
            
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(Color.gray)
        }
    }
}

struct TabSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        TabSelectorView(selectedIndex: .constant(0))
            .frame(height: 60)
    }
}
