//
//  ServicesView.swift
//  coffee app
//
//  Created by Dmytro Listenin on 07.06.2026.
//

import SwiftUI

// Single service row: photo + icon + title + description
struct ServiceRowView: View {
    let imageName: String
    let iconName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 250)
                .clipped()
                .padding(.horizontal, 40)
            
            HStack {
                Image(iconName)
                    .resizable()
                    .cornerRadius(100)
                    .frame(width: 50, height: 50)
                    .padding(.leading, 40)
                    .padding(.top, 5)
                
                Text(title)
                    .padding(.top, 5)
                    .font(.system(size: 30))
                    .bold()
                Spacer()
            }
            
            HStack {
                Text(description)
                    .padding(.horizontal, 40)
                Spacer()
            }
        }
        .padding(.top, 40)
    }
}

// All services section
struct ServicesView: View {
    var body: some View {
        VStack {
            Text("OUR SERVICES")
                .padding(.top, 45)
                .font(.system(size: 30))
                .bold()
                .foregroundColor(.orange2)
            
            Text("Fresh & Organic Beans")
                .padding(.horizontal, 20)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.top, 10)
            
            // 1. Delivery
            ServiceRowView(
                imageName: "service-1",
                iconName: "fast-delivery-8HPKMDAGEY (1)",
                title: "Fastest Door Delivery",
                description: "Your order will arrive quickly and fragrantly, and you can also set up automatic delivery on specified days and times."
            )
            
            // 2. Beans — separate view because it has a list
            CoffeeBeansServiceView()
            
            // 3. Quality
            ServiceRowView(
                imageName: "v60-coffee-dripper",
                iconName: "badge-M39JSVZL7Q",
                title: "Best Quality Coffee",
                description: "The baristas are experienced and love their work."
            )
            
            // 4. Table booking
            ServiceRowView(
                imageName: "service-4",
                iconName: "time-CMX3R8BVT5",
                title: "Online Table Booking",
                description: "It is possible to reserve a table at a convenient time."
            )
        }
    }
}

// Service #2 — separate because it has a country list instead of plain text
struct CoffeeBeansServiceView: View {
    
    let origins = [
        "Ethiopia: Known for its complex flavor with fruity and floral notes",
        "Kenya: Has a bright flavor with fruity acidity",
        "Panama: Characterized by a complex flavor with fruity and floral nuances",
        "Costa Rica: Balanced and rich with caramel and chocolate notes"
    ]
    
    var body: some View {
        VStack {
            Image("service-2")
                .resizable()
                .padding(.horizontal, 40)
                .padding(.top, 40)
            
            HStack {
                Image("coffee-cup-57RXNP9BFG")
                    .resizable()
                    .cornerRadius(100)
                    .frame(width: 50, height: 50)
                    .padding(.leading, 40)
                    .padding(.top, 5)
                
                Text("Fresh Coffee Beans")
                    .padding(.top, 5)
                    .font(.system(size: 30))
                    .bold()
                Spacer()
            }
            
            HStack {
                Text("All kinds of beans to suit your taste")
                    .padding(.leading, 40)
                Spacer()
            }
            
            // Coffee origins list
            VStack {
                ForEach(origins, id: \.self) { origin in
                    HStack {
                        Image(systemName: "arrow.turn.down.right")
                            .font(.system(size: 25))
                            .padding(.leading, 40)
                            .padding(.top, 5)
                        Text(origin)
                            .padding()
                        Spacer()
                    }
                }
            }
        }
    }
}
