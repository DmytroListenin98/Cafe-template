//
//  PromoView.swift
//  coffee app
//
//  Created by Dmytro Listenin on 07.06.2026.
//

import SwiftUI

// Promo banner with discount code
struct PromoView: View {
    var body: some View {
        ZStack {
            Image("bg3")
                .resizable()
                .frame(width: 410, height: 410)
                .overlay {
                    Rectangle()
                        .fill(.header)
                        .opacity(0.6)
                }
            
            VStack(spacing: 0) {
                Image("overlay-top")
                Spacer()
            }
            
            VStack(spacing: 0) {
                Spacer()
                Image("overlay-bottom")
            }
            
            VStack {
                Text("50% OFF")
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.orange2)
                
                Text("Discount for downloading the app")
                    .font(.system(size: 35))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .multilineTextAlignment(.center)
                
                // Promo code button
                Link(destination: URL(string: "https://www.google.com/")!) {
                    Text("90DKdi89")
                        .font(.system(size: 30))
                        .bold()
                        .padding()
                        .background(.header)
                        .foregroundColor(.white)
                }
            }
        }
    }
}
