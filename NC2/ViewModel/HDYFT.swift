//
//  HDYFT.swift
//  NC2
//
//  Created by Stefano Giacobbe on 08/12/22.
//

import Foundation
import SwiftUI

struct TitleName: View {
    var name: String
    var body: some View {
        Text(name)
            .foregroundColor(.black)
            .font(.title)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}
