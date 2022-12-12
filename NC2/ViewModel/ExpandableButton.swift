//
//  ExpandableButton.swift
//  NC2
//
//  Created by Stefano Giacobbe on 12/12/22.
//

import SwiftUI

struct ExpandableButton: View {
    var tip: Tip
    @State var isCollapsed = true
    var body: some View {
        ScrollView {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color("8093F1"))
                    .opacity(0.3)
                    .frame(width: 350, height: isCollapsed ? 150 : 350)
                    .onTapGesture {
                        self.isCollapsed = !self.isCollapsed
                    }
                VStack(alignment: .leading) {
                    Text(tip.text)
                        .font(.title3)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .frame(height: isCollapsed ? 100 : 300, alignment: .leading)
                        .onTapGesture {
                            self.isCollapsed = !self.isCollapsed
                        }
                    let title = self.isCollapsed ? "more" : "less"
                    Text(title)
                        .font(.callout)
                        .foregroundColor(Color("8093F1"))
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal)
            }
        }
      .padding()
    }
}



