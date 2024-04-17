//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI


struct MenuView: View {
    
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    
    var body: some View {
        NavigationStack {
            List {
                
                // section entrées
                Section {
                    ForEach (viewModel.apetizerArray) { dishes in
                        NavigationLink {
                            DetailsView(dishes: dishes)
                        } label: {
                            MenuRow(dishes: dishes)
                        }
                    }
                    .padding([.horizontal], 12)
                    .listRowSeparator(.hidden)
                    .listRowBackground(
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color.white)
                            .padding(5)
                    )
                    .frame(width: 335, height: 110)
                } header: {
                    Text("Entrées")
                        .textCase(.none)
                        .font(.system(size: 14, weight: .black, design: .serif))
                }
                
                //section plats principaux
                Section {
                    ForEach(viewModel.mainCourseArray) { dishes in
                        NavigationLink {
                            DetailsView(dishes: dishes)
                        } label: {
                            MenuRow(dishes: dishes)
                        }
                    }
                    .padding([.horizontal], 12)
                    .listRowSeparator(.hidden)
                    .listRowBackground(
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color.white)
                            .padding(5)
                    )
                    .frame(width: 335, height: 110)
    //                .buttonStyle(PlainButtonStyle()).opacity(0.0)
                } header: {
                    Text("Plats Principaux")
                        .textCase(.none)
                        .font(.system(size: 14, weight: .black, design: .serif))
                }
                .navigationTitle("Menu")
                .navigationBarTitleDisplayMode(.inline) // pour le mettre tout en haut
            }
        }
    }
}

#Preview {
//    NavigationStack{
        MenuView()
//    }
}
