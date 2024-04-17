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
                    .frame(width: 370, height: 460, alignment: .center)
                    .cornerRadius(10.0)
                
                //niveau de piment du plat
                SpicerView(dishes: dishes).position(x: 315.0, y: 60.0)
                    .navigationTitle(dishes.name)
                    .navigationBarTitleDisplayMode(.inline)
            }
//            .position(CGPoint(x: 150.0, y: 200.0))
            // détails concernant le plat
            VStack (alignment: .leading, spacing: 15.0, content: {
                Text("Allergènes:")
                    .font(.system(.headline, weight: .regular))
                Text(dishes.allergens)
                Divider()
                Text("Ingrédients:")
                    .font(.system(.headline, weight: .regular))
                Text(dishes.ingredients)
            })
        }
        .padding()
        .font(.system(size: 12, weight: .thin))
    }
}

#Preview {
    DetailsView(dishes: .init(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: "13.00€"))
}
