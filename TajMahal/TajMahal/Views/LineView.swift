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
            imageName   // correspond à l'icone
            Text(leftText)
            Spacer()
            Text(rightText)
        }
        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
        .font(.system(.caption, design: .default, weight: .regular))
    }
}

#Preview {
    LineView(imageName: Image("Horaire"), leftText: "Mardi", rightText: "")
}
