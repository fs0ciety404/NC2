//
//  TipsButton3.swift
//  NC2
//
//  Created by Stefano Giacobbe on 14/12/22.
//

import SwiftUI

struct FatigueButton: View {
    @State var isExpanded = false
    var text: String
    var icon: String
    var color: String
    var body: some View {
            VStack {
                Button {
                    isExpanded.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(color))
                            .opacity(0.5)
                            .frame(width: 340, height: 100)
                            .shadow(radius: 5, y:10)
                        HStack(spacing: 40) {
                            Image(systemName: icon)
                            Text(text)
                        }
                        .padding(.horizontal, 50)
                        .font(.system(size: 30))
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    }
                }
                if isExpanded == true {
                    TipsText(titolo: "Get enough rest", description: "Fatigue can be caused by a lack of sleep, so make sure you're getting plenty of it. Get at least seven to eight hours of sleep each night, and nap throughout the day if necessary. Avoid overly strenuous or stressful activities, and create time for yourself to relax and decompress.")
                    TipsText(titolo: "Consume a nutritious diet", description: "A nutritious diet can help you stay energized and manage with the physical demands of pregnancy. Drink plenty of water and consume a variety of fruits, vegetables, whole grains, and protein sources. Avoid items that may be dangerous to you or your baby, such as raw or undercooked meats, mercury-laden fish, and unpasteurized dairy products.")
                    TipsText(titolo: "Regular Exercise", description: "Regular exercise can help you improve your energy levels, happiness, and stress levels. Discuss with your doctor what sorts of exercise are appropriate for you, and aim for at least 30 minutes of moderate-intensity activity most days of the week. Walking, swimming, or pregnancy-specific exercises are examples of such activities.")
                    TipsText(titolo: "Avoid Caffeine and Alcohol", description: "Caffeine and alcohol can disrupt your sleep and make you tired, as well as harm your baby. Limit your caffeine consumption to no more than 200 mg per day, and eliminate alcohol entirely.")
                }
            }
            .animation(.spring())
    }
}


