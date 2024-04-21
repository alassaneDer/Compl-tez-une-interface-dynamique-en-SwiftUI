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
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .padding(.horizontal)
            
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
            .padding(.horizontal)
            
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
            .frame(width: 335, height: 40, alignment: .center)
            .background(
                Color(#colorLiteral(red: 0.8560177684, green: 0.2718088031, blue: 0.2388259172, alpha: 1))
            )
            .cornerRadius(10)
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
}
