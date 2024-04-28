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
    
    // Declaring the dismiss Environnement value
    @Environment(\.dismiss) var dismiss

    
    
    var body: some View {
        ZStack {
//             Background
            Color(#colorLiteral(red: 0.9475662112, green: 0.9475662112, blue: 0.9475662112, alpha: 1))
                .ignoresSafeArea()
            
            // List with a ScrollView()
            ScrollView {
                VStack(spacing: 15) {
                    
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
                    } header: {
                        Text("Entrées")
                            .font(.system(.subheadline, design: .default, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 12)
                    }
                    
                    // section plats principaux
                    Section {
                        ForEach(viewModel.mainCourseArray) { dishes in
                            NavigationLink {
                                DetailsView(dishes: dishes)
                            } label: {
                                MenuRow(dishes: dishes)
                            }
                        }
                        .padding([.horizontal], 12)
                    } header: {
                        Text("Plats Principaux")
                            .font(.system(.subheadline, design: .default, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 12)
                    }
                    .navigationTitle("Menu")
                    .font(.system(.headline, design: .default, weight: .semibold))
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading:
                        Button {
                        // calling the dismiss() to perform the dismissal
                            dismiss()
                            } label: {
                                Image(systemName: "chevron.backward")
                    })
                    .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        MenuView()
    }
}
