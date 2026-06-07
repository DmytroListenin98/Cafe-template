//
//  ContentView.swift
//  coffee app
//
//  Created by Dmytro Listenin on 12.09.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.back.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 0) {
                    HeaderView()
                    AboutView()
                    ServicesView()
                    PromoView()
                    MenuView()
                    BookingView()
                    ContactsView()
                }
            }
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

#Preview {
    ContentView()
}
