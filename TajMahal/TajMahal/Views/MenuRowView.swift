//
//  MenuRowView.swift
//  TajMahal
//
//  Created by Alassane Der on 14/04/2024.
//

import SwiftUI

struct MenuRow: View {
    
    // Adding dishes as a stored property of Dish.
    var dishes: Dish
    
    var body: some View {
        HStack{
            // image du plat
            dishes.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120,height: 90)
                .cornerRadius(10)
            
            // Nom du plat, sa description, son prix et le niveau de piment
            VStack (alignment: .leading, spacing: 10) {
                Text(dishes.name)
                    .font(.system(.callout, design: .default, weight: .regular))
                    .foregroundStyle(Color(#colorLiteral(red: 0.3364975452, green: 0.3364975452, blue: 0.3364975452, alpha: 1)))
                
                Text(dishes.description)
                    .font(.system(.caption, design: .default, weight: .regular))
                    .foregroundStyle(Color(#colorLiteral(red: 0.4756370187, green: 0.4756369591, blue: 0.4756369591, alpha: 1)))
                    .frame(maxWidth: .infinity,  alignment: .leading)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text(dishes.price)
                        .font(.system(.caption, design: .default, weight: .regular))
                        .foregroundStyle(Color(#colorLiteral(red: 0.3364975452, green: 0.3364975452, blue: 0.3364975452, alpha: 1)))
                    
                    Spacer()
                    
                    // La vue SpicerView pour le niveau de piment
                    SpicerView(dishes: dishes)
                }
            }
            .padding(.horizontal)
            .font(.system(size: 12))
            .baselineOffset(1.0)
        }
        .padding(10)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    Group{
        MenuRow(dishes: .init(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: "5.50€"))
        
        MenuRow(dishes: .init(name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile", spiceLevel: .medium, imageName: "Pakoras", price: "5.00€"))
    }
}
