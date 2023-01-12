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
    
    var titleColor: Color = Color.gray
    var selectedTitleColor: Color = Color.black
    var underlineColor: Color = Color.orange
    var underlineViewHeight: CGFloat = 5.0
    
    var isSelected: Bool {
        self.item.index == selectedIndex
    }
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        GeometryReader { geometryReader in
            Button {
                selectedIndex = item.index
            } label: {
                VStack(spacing: 0) {
                    Text(item.title)
                        .foregroundColor(isSelected ? selectedTitleColor : titleColor)
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
            selectedIndex: .constant(item.index)
        )
        .frame(height: 80)
        .background(Color.purple)
    }
}
