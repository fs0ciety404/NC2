//
//  EmojiPicker.swift
//  NC2
//
//  Created by Davide Ragosta on 09/12/22.
//

import SwiftUI

struct EmojiPicker: View {
    
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                VStack{
                    
                    HStack{
                        
                        Spacer()
                        
                        Button(action: {dismiss()} ) {
                            Image(systemName: "x.circle.fill")
                        }
                    }
                    .padding()
                    
                    Spacer()
                }
                
                VStack{
                    
                    EmojiPickerViewModel()
                    
                    Spacer()
                }
                
            }
        }
    }
}


private func emoji(_ value: Int) -> String {
    guard let scalar = UnicodeScalar(value) else { return "?" }
    return String(Character(scalar))
}

struct EmojiPicker_Previews: PreviewProvider {
    static var previews: some View {
        EmojiPicker()
    }
}
