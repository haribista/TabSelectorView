//
//  TabSelectorItemView.swift
//  FiskerTabSelectorView
//
//  Created by Hari Krishna Bista on 1/11/23.
//

import SwiftUI

struct TabSelectorItemView: View {
    var title = "A"
    var titleColor: Color = Color.gray
    var selectorColor: Color = Color.orange
    
    var underlineViewHeight: Double = 10.0
    
    var body: some View {
        GeometryReader { geometryReader in
            Button {
                print("Item selecged: \(title)")
            } label: {
                VStack(spacing: 0) {
                    Text(title)
                        .foregroundColor(titleColor)
                        .frame(height: geometryReader.size.height)
                    
                    Rectangle()
                        .frame(height: underlineViewHeight)
                        .foregroundColor(selectorColor)
                }
            }
        }
    }
}

struct TabSelectorItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabSelectorItemView()
            .frame(height: 80)
            .background(Color.purple)
    }
}
