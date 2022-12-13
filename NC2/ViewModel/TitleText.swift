//
//  TitleText.swift
//  NC2
//
//  Created by Stefano Giacobbe on 12/12/22.
//

import SwiftUI

struct TitleText: View {
    var heading: String = ""
    var body: some View {
        Text(heading)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color("8093F1"))
            .frame(maxWidth: .infinity, alignment: .center)
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText(heading: "Ok")
    }
}
