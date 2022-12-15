//
//  feelingsView.swift
//  NC2
//
//  Created by Ludovica Marte on 10/12/22.
//

import SwiftUI

struct TipsView: View {
    @State var isExpanded = false
    @State var bodyValue: Bool
    var body: some View {
        ZStack {
            Background()
            ScrollView(showsIndicators: false) {
                    VStack(spacing: 70) {
                        if bodyValue == true {
                            Spacer()
                            NauseaButton(text: "Nausea", icon: "heart", color: "8093F1")
                            BreastButton(text: "Breast Tenderness", icon: "tropicalstorm", color: "8093F1")
                            FatigueButton(text: "Fatigue", icon: "figure.cooldown", color: "8093F1")
                        } else {
                            PsychButton(text: "General tips", icon: "camera.macro", color: "8093F1")
                        }
                    }
            }
        }
    }
}
struct feelingsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView(bodyValue: true)
    }
}
