//
//  TabSelectorItemView.swift
//  FiskerTabSelectorView
//
//  Created by Hari Krishna Bista on 1/11/23.
//

import SwiftUI

struct TabSelectorItem: Hashable, Identifiable {
    var id: Int {
        index
    }
    
    var index: Int
    var title: String
}

struct TabSelectorItemView: View {
    var item: TabSelectorItem
    @Binding var selectedIndex: Int
    
    var selectedTitleColor: Color = Color.black
    var unselectedTitleColor: Color = Color.gray
    var titleFont: Font = Font.system(
        size: 16,
        weight: Font.Weight.bold
    )
    
    var underlineColor: Color = Color.orange
    var underlineViewHeight: CGFloat = 2.0
    
    var isSelected: Bool {
        self.item.index == selectedIndex
    }

    var body: some View {
        GeometryReader { geometryReader in
            Button {
                selectedIndex = item.index
            } label: {
                VStack(spacing: 0) {
                    Text(item.title)
                        .font(titleFont)
                        .foregroundColor(isSelected ? selectedTitleColor : unselectedTitleColor)
                        .frame(height: geometryReader.size.height - underlineViewHeight)
                    
                    Rectangle()
                        .frame(height: underlineViewHeight)
                        .foregroundColor(isSelected ? underlineColor: Color.clear)
                }
            }
        }
    }
}

struct TabSelectorItemView_Previews: PreviewProvider {
    static var previews: some View {
        let item = TabSelectorItem(index: 0, title: "First")
        TabSelectorItemView(
            item: item,
            selectedIndex: .constant(0)
        )
        .frame(height: 60)
    }
}
