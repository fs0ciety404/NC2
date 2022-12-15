//
//  TipsText.swift
//  NC2
//
//  Created by Stefano Giacobbe on 13/12/22.
//

import Foundation
import SwiftUI

struct TipsText: View {
    var bodyShape = true
    @State var isCollapsed = true
    var titolo: String
    var description: String
    var body: some View {
        ScrollView {
            if bodyShape == true {
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
            } else {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(Color("8093F1"))
                        .opacity(0.3)
                        .frame(width: 350, height: isCollapsed ? 180 : 250)
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
                                .frame(height: isCollapsed ? 100 : 150, alignment: .leading)
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
        }
        .padding()
    }
}

struct TipsText_Previews: PreviewProvider {
    static var previews: some View {
        TipsText(bodyShape: false, titolo: "Sium", description: "Make time for relaxing activities that you enjoy, such as reading a book, listening to music, having a warm bath, or making whatever you would like to do in your spare time.")
    }
}


