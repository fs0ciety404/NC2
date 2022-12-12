//
//  TipsView.swift
//  NC2
//
//  Created by Stefano Giacobbe on 12/12/22.
//

import SwiftUI

struct TipsView: View {
    var body: some View {
        ScrollView {
            Dismiss()
            ForEach(tips) { tip in
                ExpandableButton(tip: tip)
            }
            Spacer()
        }
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}

