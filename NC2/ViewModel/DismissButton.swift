//
//  DismissButton.swift
//  NC2
//
//  Created by Stefano Giacobbe on 12/12/22.
//

import Foundation
import SwiftUI

struct Dismiss: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.down")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .foregroundColor(Color("8093F1"))
        }
    }
}
