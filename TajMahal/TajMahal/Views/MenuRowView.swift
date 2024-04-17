//
//  MenuRowView.swift
//  TajMahal
//
//  Created by Alassane Der on 14/04/2024.
//

import SwiftUI

struct MenuRow: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    // Adding dishes as a stored property of Dish.
    var dishes: Dish
    
    var body: some View {
        HStack{
            dishes.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120,height: 90)
                .cornerRadius(10)
            VStack (alignment: .leading, spacing: 10) {
                Text(dishes.name)
                    .font(.system(size: 14))
                
                Text(dishes.description)
                    .foregroundStyle(.secondary)
                
                HStack {
                    Text(dishes.price)   // ce text me parait un peu plus sombre sur maquette
                    Spacer()
                    
                    SpicerView(dishes: dishes)
                }
                .foregroundStyle(.secondary)
            }
            .font(.system(size: 12))
            .baselineOffset(1.0)
        }
    }
}

#Preview {
    Group{
        MenuRow(dishes: .init(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: "5.50€"))
        
        MenuRow(dishes: .init(name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile", spiceLevel: .medium, imageName: "Pakoras", price: "5.00€"))
    }
}
