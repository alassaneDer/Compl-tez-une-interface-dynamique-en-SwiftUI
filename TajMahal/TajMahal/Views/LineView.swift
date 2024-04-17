//
//  LineView.swift
//  TajMahal
//
//  Created by Alassane Der on 14/04/2024.
//

import SwiftUI

struct LineView: View {
    
    // variables qui vont stocker le contenu du text qui va changer
    let imageName: Image
    let leftText: String
    var rightText: String = ""
    
    var body: some View {
        HStack {
            imageName
            Text(leftText)
            Spacer()// pour séparer les éléments
            Text(rightText)
        }
//        .font(.system(size: 20, weight: .thin, design: .default))
        //.padding()//pour de la marge
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .foregroundStyle(.secondary)
    }
}

#Preview {
    LineView(imageName: Image("Horaire"), leftText: "Mardi", rightText: "")
}
