//
//  DetailsView.swift
//  TajMahal
//
//  Created by Alassane Der on 14/04/2024.
//

import SwiftUI

struct DetailsView: View {
    
    // Adding dishes as a stored property of Dish.
    var dishes: Dish
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                // image du plat
                dishes.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 335, idealWidth: .infinity, maxWidth: .infinity, minHeight: 447, idealHeight: .infinity, maxHeight: .infinity, alignment: .center)
                    .cornerRadius(10.0)
                    .padding(.horizontal, 20)
                
                //niveau de piment du plat
                SpicerView(dishes: dishes)
                    .position(x: 315.0, y: 25.0)
            }
            // détails concernant le plat
            VStack (alignment: .leading, spacing: 15.0, content: {
                Text("Allergènes:")
                    .font(.system(.subheadline, weight: .regular))
                    .foregroundStyle(Color(#colorLiteral(red: 0.2605186105, green: 0.2605186105, blue: 0.2605186105, alpha: 1)))
                Text(dishes.allergens)
                Divider()
                Text("Ingrédients:")
                    .font(.system(.subheadline, weight: .regular))
                    .foregroundStyle(Color(#colorLiteral(red: 0.2605186105, green: 0.2605186105, blue: 0.2605186105, alpha: 1)))
                Text(dishes.ingredients)
            })
            .font(.system(.caption, design: .default, weight: .regular))
            .foregroundStyle(Color(#colorLiteral(red: 0.4078193903, green: 0.4078193307, blue: 0.4078193307, alpha: 1)))
            .padding(20.0)
        }
        // configation de la navition bar pour le mettre en noir et à droite
        .navigationBarItems(leading:
            Button {
                    print("add")
                } label: {
                    Image(systemName: "chevron.backward")
                    Text(dishes.name)
        })
        .foregroundStyle(.black)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    DetailsView(dishes: .init(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: "13.00€"))
}
