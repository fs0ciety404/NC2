//
//  feelingsView.swift
//  NC2
//
//  Created by Ludovica Marte on 10/12/22.
//

import SwiftUI

struct TipsView: View {
    @State var isExpanded = false
    var body: some View {
        ZStack {
            Background()
            ScrollView(showsIndicators: false) {
                    VStack(spacing: 70) {
                        NauseaButton(text: "Nausea", icon: "brain", color: "8093F1")
                        BreastButton(text: "Breast Tenderness", icon: "brain", color: "8093F1")
                        FatigueButton(text: "Fatigue", icon: "figure.cooldown", color: "8093F1")
                    }
            }
        }
    }
}
struct feelingsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
