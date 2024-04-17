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
                .frame(width: 335, height: 423)
            
            HStack {
                VStack (alignment: .leading){
                    Text("Restaurant Indien")
                        .foregroundStyle(.secondary)
                    Text("Taj Mahal")
                        .bold()
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .colorMultiply(.gray)
                    .frame(height: 40)
            }
            .padding()
            
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
            .background(.red)
            .cornerRadius(10)
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
}

// comment rendre tout visible qu'importe la taille de l'écran???

