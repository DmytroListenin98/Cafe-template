//
//  ContactsView.swift
//  coffee app
//
//  Created by Dmytro Listenin on 07.06.2026.
//

import SwiftUI

// Single contact row: icon + text
struct ContactRowView: View {
    let systemIcon: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: systemIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .padding(.leading, 40)
                .foregroundColor(.white)
            
            Text(text)
                .foregroundColor(.orange2)
                .bold()
                .padding()
                .background(.header)
                .cornerRadius(50)
            
            Spacer()
        }
    }
}

// Opening hours + contacts section
struct ContactsView: View {
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
            
            VStack(spacing: 16) {
                ContactRowView(systemIcon: "mappin.circle.fill", text: "Your address")
                ContactRowView(systemIcon: "phone.fill",         text: "Your number")
                ContactRowView(systemIcon: "envelope.fill",      text: "info@example.com")
                
                Text("OPEN HOURS")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
                // Weekdays
                VStack(spacing: 4) {
                    Text("MONDAY - FRIDAY")
                        .foregroundColor(.white)
                    Text("8.00 AM - 8.00 PM")
                        .foregroundColor(.white)
                }
                
                // Weekend
                VStack(spacing: 4) {
                    Text("SATURDAY - SUNDAY")
                        .foregroundColor(.white)
                    Text("2.00 PM - 8.00 PM")
                        .foregroundColor(.white)
                }
            }
        }
    }
}
