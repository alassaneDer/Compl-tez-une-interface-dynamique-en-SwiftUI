//
//  SpicerView.swift
//  TajMahal
//
//  Created by Alassane Der on 14/04/2024.
//

import SwiftUI

struct SpicerView: View {
    
    // Adding dishes as a stored property of Dish.
    var dishes: Dish
    
    // fonction qui va retourner une valeur entre 1 et 3 correspondant au niveau de piment
    func getRating(rater: SpiceLevel) -> (Int) {
        if rater == SpiceLevel.hot {
            return 3
        } else if rater == SpiceLevel.medium {
            return 2
        } else {
            return 1
        }
    }
    
    
    var body: some View {
        
        // la variable rating stocke la valeur obtenue avec la fonction getRating
        let rating: Int = getRating(rater: dishes.spiceLevel)
        
        ZStack {
            // pour l'arrière plan sur la vue DetailsView()
            RoundedRectangle(cornerRadius: 11.0)
                .fill(Color.white)
                .frame(width: 80, height: 25)
            // Niveau piment avec une ForEach
            HStack{
                ForEach(1..<4) { index in
                    Image("pepper")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 18, maxHeight: 12, alignment: .center)
                        .foregroundStyle(rating >= index ? Color(#colorLiteral(red: 0.8560177684, green: 0.2718088031, blue: 0.2388259172, alpha: 1)) : Color.gray)
                }
            }
        }
    }
}


#Preview {
    SpicerView(dishes: .init(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: "5.50€"))
}
