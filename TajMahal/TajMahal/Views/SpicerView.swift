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
    
    // function used to get an integer that i'll store in rating
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
        
        // la variable rating stocke la valeur obtenue de la func getRating
        let rating: Int = getRating(rater: dishes.spiceLevel)
        
        ZStack { //je dois en faire une vue pour la réutiliser sur detailsView
            RoundedRectangle(cornerRadius: 11.0)
                .fill(Color.white)
                .frame(width: 80, height: 25)
            HStack{
                ForEach(1..<4) { index in
                    Image("Spice")
                        .renderingMode(.template)  //ici il reste à trouver l'icone exacte
                        .font(.caption)
                        .foregroundColor(rating >= index ? Color.red : Color.gray)
                }
            }
        }
    }
}


#Preview {
    SpicerView(dishes: .init(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: "Samosas", price: "5.50€"))
}
