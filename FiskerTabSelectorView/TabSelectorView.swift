//
//  ContentView.swift
//  FiskerTabSelectorView
//
//  Created by Hari Krishna Bista on 1/11/23.
//

import SwiftUI

struct TabSelectorView: View {
    
    var titles: [String] = ["Hari", "Krishna", "Bista"]
    
    var body: some View {
        GeometryReader { geomertyReader in
            ZStack {
                HStack(spacing: 0) {
                    TabSelectorItemView(title: titles[0])
                    TabSelectorItemView(title: titles[1])
                    TabSelectorItemView(title: titles[2])
                }
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(height: 10)
                        .foregroundColor(Color.black)
                }
            }
        }
    }
}

struct TabSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        TabSelectorView()
            .frame(height: 100)
    }
}
