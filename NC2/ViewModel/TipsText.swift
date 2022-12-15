//
//  TipsText.swift
//  NC2
//
//  Created by Stefano Giacobbe on 13/12/22.
//

import Foundation
import SwiftUI

struct TipsText: View {
    @State var isCollapsed = true
    var titolo: String
    var description: String
    var body: some View {
        ScrollView {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color("8093F1"))
                    .opacity(0.3)
                    .frame(width: 350, height: isCollapsed ? 180 : 400)
                    .onTapGesture {
                        self.isCollapsed = !self.isCollapsed
                    }
                VStack(alignment: .leading, spacing: -10) {
                        Text(titolo)
                        .foregroundColor(Color("8093F1"))
                        .font(.largeTitle)
                        .onTapGesture {
                            self.isCollapsed = !self.isCollapsed
                        }
                        Text(description)
                        .font(.system(size: 20))
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
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding()
            }
        }
        .padding()
    }
}

struct TipsText_Previews: PreviewProvider {
    static var previews: some View {
        TipsText(titolo: "Sium", description: "Nausea and vomiting may reappear in the third trimester. Try the same tactics as in the first trimester to assist control these symptoms, such as eating small, frequent meals and avoiding trigger foods. It may also assist to avoid lying down after eating, as well as to eat slowly and thoroughly. Some women find that acupressure relieves nausea, so you can try wearing acupressure wristbands or applying acupressure points on your wrist or hand.")
    }
}


////MARK: tips array
//var tips = [
//    TipsText(titolo: "First Trimester", description: "Nausea and vomiting are frequent symptoms throughout the first trimester. To assist manage these symptoms, eat little, frequent meals rather than three large ones. Avoid hot, fatty, or acidic foods in favor of crackers, bananas, and rice, which are strong in protein and complex carbs. It may also be beneficial to avoid strong odors that can cause nausea, as well as to stay hydrated by drinking enough of fluids."),
//    TipsText(titolo: "Second Trimester", description: "Nausea and vomiting may lessen or go entirely during the second trimester. If you still have these symptoms, try eating small, frequent meals and avoiding trigger foods. It may also assist to avoid lying down after eating, as well as to eat slowly and thoroughly. Some women believe that ginger or peppermint might assist with nausea, so try drinking ginger tea or nibbling on peppermint sweets"),
//    TipsText(titolo: "Third Trimester ", description: "Nausea and vomiting may reappear in the third trimester. Try the same tactics as in the first trimester to assist control these symptoms, such as eating small, frequent meals and avoiding trigger foods. It may also assist to avoid lying down after eating, as well as to eat slowly and thoroughly. Some women find that acupressure relieves nausea, so you can try wearing acupressure wristbands or applying acupressure points on your wrist or hand.")
//
//]
