//
//  AboutView.swift
//  coffee app
//
//  Created by Dmytro Listenin on 07.06.2026.
//

import SwiftUI

// A section describing the coffee shop with a “Learn more” button
struct AboutView: View {
    var body: some View {
        VStack {
            Text("Title")
                .font(.system(size: 25))
                .bold()
                .foregroundColor(.orange2)
                .padding(.top, 50)
            
            Text("under the heading")
                .font(.system(size: 30))
                .bold()
            
            HStack {
                Text("About the Template")
                    .font(.system(size: 25))
                    .bold()
                    .padding()
                    .padding(.leading, 20)
                Spacer()
            }
            
            Text("At Aroma Café, we believe coffee is more than just a drink – it's an experience. Our beans are carefully sourced from sustainable farms around the world, roasted to perfection, and brewed fresh to bring out their rich flavors.")
                .multilineTextAlignment(.leading)
                .font(.system(size: 20))
                .padding(.horizontal, 40)
            
            Link(destination: URL(string: "https://en.wikipedia.org/wiki/Coffee_filter#V60")!) {
                Text("Learn more")
                    .bold()
                    .foregroundColor(.white)
                    .padding(20)
                    .background(.header)
                    .cornerRadius(5)
            }
        }
    }
}
