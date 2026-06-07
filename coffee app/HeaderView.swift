//
//  HeaderView.swift
//  coffee app
//
//  Created by Dmytro Listenin on 07.06.2026.
//

import SwiftUI

// The top section with a photo, the café's name, and overlays
struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("carousel-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay {
                    Rectangle()
                        .fill(.header)
                        .opacity(0.6)
                }
            
            VStack {
                Text("Name of the café")
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("2025")
                    .font(.system(size: 23))
                    .bold()
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
            
            VStack(spacing: 0) {
                Spacer()
                Image("overlay-bottom")
            }
        }
    }
}
