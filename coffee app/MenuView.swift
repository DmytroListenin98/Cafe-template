//
//  MenuView.swift
//  coffee app
//
//  Created by Dmytro Listenin on 07.06.2026.
//

import SwiftUI

// Single menu item: photo + price badge + name + description
struct MenuItemView: View {
    let imageName: String
    let price: String
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Image(imageName)
                        .resizable()
                        .cornerRadius(100)
                        .frame(width: 100, height: 100)
                        .padding(.leading, 40)
                    
                    // Price badge
                    HStack {
                        Text(price)
                            .padding()
                            .background(.orange2)
                            .bold()
                            .cornerRadius(100)
                            .padding(.leading, 100)
                            .padding(.bottom, 60)
                        Spacer()
                    }
                }
                
                Text(title)
                    .font(.system(size: 20))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 120)
            }
            
            Text(description)
                .padding(.horizontal, 40)
                .padding(.bottom, 50)
        }
    }
}

// Full menu section
struct MenuView: View {
    
    // Menu items data
    let items: [MenuItem] = [
        MenuItem(
            imageName: "Ethiopia Sidamo",
            price: "$5",
            title: "Classic V60 \"Ethiopia Sidamo\"",
            description: "This coffee is the perfect choice for those who want to try the V60 method. It has a bright and clean taste. You will notice notes of strawberry 🍓, jasmine, and a slight citrus sourness."
        ),
        MenuItem(
            imageName: "kosta",
            price: "$7",
            title: "V60 \"Costa Rica\"",
            description: "This V60 variant demonstrates how diverse coffee from a single region can be. Its aroma is dominated by notes of milk chocolate 🍫 and caramel, while its flavor reveals hints of red apples and nuts."
        ),
        MenuItem(
            imageName: "keniaAA",
            price: "$9",
            title: "V60 \"Kenya AA\"",
            description: "This coffee is for true connoisseurs of complex and multifaceted flavors. Its taste is rich in notes of bergamot and grapes, and its aroma has hints of citrus and spices."
        )
    ]
    
    var body: some View {
        VStack {
            Text("MENU & PRICING")
                .padding(.top, 60)
                .font(.system(size: 30))
                .bold()
                .foregroundColor(.orange2)
            
            HStack {
                Text("Hot Coffee")
                    .padding(.top, 50)
                    .padding(.leading, 40)
                    .font(.system(size: 30))
                    .bold()
                Spacer()
            }
            
            // Menu items list
            ForEach(items, id: \.title) { item in
                MenuItemView(
                    imageName: item.imageName,
                    price: item.price,
                    title: item.title,
                    description: item.description
                )
            }
        }
    }
}

// Data model for a single menu item
struct MenuItem {
    let imageName: String
    let price: String
    let title: String
    let description: String
}
