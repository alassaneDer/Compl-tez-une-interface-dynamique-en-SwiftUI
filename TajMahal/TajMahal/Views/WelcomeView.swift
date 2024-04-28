//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 335, idealWidth: 335, maxWidth: .infinity, minHeight: 423, idealHeight: 423, maxHeight: .infinity, alignment: .center)
            
            HStack {
                VStack (alignment: .leading){
                    Text("Restaurant Indien")
                        .font(.system(.caption, design: .default, weight: .regular))
                    Text("Taj Mahal")
                        .font(.system(.headline, design: .default, weight: .semibold))
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .colorMultiply(.gray)
                    .frame(height: 40)
            }
            .padding([.horizontal], 20)
            .padding([.vertical], 15)
            
            //complétons avec la vue réutilisable LineView
            LineView(imageName: Image("Horaire"), leftText: "Mardi", rightText: "11h30 - 14h30 • 18h30 - 22H00")
            LineView(imageName: Image("IconTypeService"), leftText: "Type de servcice", rightText: "A emporter")
            LineView(imageName: Image("Localisation"), leftText: "12 Avenue de la Brique - 75010 Paris")
            LineView(imageName: Image("Site"), leftText: "www.tajmahal.fr")
            LineView(imageName: Image("Téléphone"), leftText: "06 12 34 56 78")
            
            
            Spacer()
            NavigationLink {
                MenuView()
            } label: {
                Text("Accéder au menu")
                    .foregroundColor(.white)
                    .bold()
            }
            .frame(minWidth: 350, minHeight: 40, alignment: .center)
            .background(
                Color(#colorLiteral(red: 0.8560177684, green: 0.2718088031, blue: 0.2388259172, alpha: 1))
            )
            .cornerRadius(10)
            .padding([.top, .horizontal], 20)
        }
    }
}

#Preview {
    WelcomeView()
}
