//
//  BookingView.swift
//  coffee app
//
//  Created by Dmytro Listenin on 07.06.2026.
//


import SwiftUI

// Table reservation form
struct BookingView: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var date = ""
    @State private var time = ""
    @State private var persons = ""
    
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
            
            VStack(spacing: 12) {
                Text("Book Your Table")
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 25))
                
                BookingTextField(placeholder: "Name", text: $name)
                BookingTextField(placeholder: "Email", text: $email)
                BookingTextField(placeholder: "Date", text: $date)
                BookingTextField(placeholder: "Time", text: $time)
                BookingTextField(placeholder: "Persons", text: $persons)
                
                Button {
                    // TODO: handle booking submission
                } label: {
                    Text("Book Now")
                        .bold()
                        .foregroundColor(.white)
                        .padding(20)
                        .padding(.horizontal, 40)
                        .background(.orange2)
                        .cornerRadius(5)
                }
            }
        }
    }
}

// Reusable styled text field for the booking form
struct BookingTextField: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.orange2)
            }
            .cornerRadius(8)
            .foregroundColor(.black)
            .padding(.horizontal, 40)
    }
}
