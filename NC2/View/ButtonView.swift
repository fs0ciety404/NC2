//
//  buttonsView.swift
//  NC2
//
//  Created by Ludovica Marte on 07/12/22.
//
import SwiftUI
import Foundation


struct ButtonsView: View {
    @State private var showTestCounter = false
    @State private var showtipsView = false
    @State private var textToDisplay = ""
    @State var selectedDate = Date()
    @AppStorage("counter") var calculateDayDifference: Int = 0
    var body: some View {
        //ZStack{
        VStack {
            Spacer()
            TitleText(heading: "Expected childbirth in...")
            //NavigationStack{
                CounterButton()
            Spacer()
            TitleText(heading: "Discover our tips for you")
            MainButton(showtipsView: false, text: "Body", icon: "brain", color: "8093F1")
            Spacer()
            MainButton(showtipsView: false, text: "Mind", icon: "person", color: "72DDF7")
            Spacer()
                }
                
            //}
        //}
    }
}


struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
