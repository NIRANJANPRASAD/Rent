//
//  NeumorphicView.swift
//  Rent
//
//  Created by Niranjan on 05/05/21.
//

import SwiftUI

struct NeumorphicView: View {
    var body: some View {
        VStack {
            Button("Hello, Neumorphism!", action: {

            }).padding(20)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.neuBackground)
            )
            .shadow(color: .dropShadow, radius: 15, x: 10, y: 10)
            .shadow(color: .dropLight, radius: 15, x: -10, y: -10)
            .foregroundColor(.primary)
        }
    }
}

struct NeumorphicView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicView()
    }
}
