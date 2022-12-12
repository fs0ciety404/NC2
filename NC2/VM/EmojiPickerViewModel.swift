//
//  EmojiPickerModel.swift
//  NC2
//
//  Created by Davide Ragosta on 09/12/22.
//

import SwiftUI

struct EmojiPickerViewModel: View {
    
    @Environment(\.dismiss) var dismiss
    
    let spacing: CGFloat = 10
    
    @State private var numberOfRaws = 4
    
    var body: some View {
        
        let columns = Array(
            repeating: GridItem(.flexible(),spacing: spacing),
            count: numberOfRaws)
        
            LazyVGrid(columns: columns,spacing: spacing){
                ForEach(items){ item in
                    Button(action: {dismiss()}) {
                        ItemView(item: item)
                    }

                }
            }
            .padding(.horizontal)
    }
}

struct ItemView: View {
    
    let item: feelings
    
    var body: some View{
        GeometryReader{ reader in
            VStack(spacing: 5) {
                
                Text(item.image)
                    .frame(height: 100)
                    
            }
            .frame(width: reader.size.width, height: reader.size.height)
            .background(Color.white)
            
        }
        .frame(width: 50, height: 50)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .shadow(color: .black.opacity(0.2), radius: 5, y: 5)
    }
}

struct EmojiPickerViewModel_Previews: PreviewProvider {
    static var previews: some View {
        EmojiPickerViewModel()
    }
}
