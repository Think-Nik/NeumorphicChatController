//
//  NeumorphicShape.swift
//  NeumorphicChatController
//
//  Created by Macbook-pro on 06/07/23.
//

import SwiftUI

struct NeumorphicShape<S: Shape>: View {
    var isHighlighted: Bool
    var shape: S

    var body: some View {
        ZStack {
            if isHighlighted {
                shape
                    .stroke(LinearGradient(colors: [Color("DarkShadow").opacity(0.4), Color("LightShadow").opacity(0.4)], startPoint: .topLeading, endPoint: .bottomLeading), lineWidth: 4)
                    .shadow(color: Color("DarkShadow"), radius: 2, x: 2, y: 2)
                    .shadow(color: Color("LightShadow"), radius: 2, x: -2, y: -2)

            } else {
                shape
                    .fill(Color("Background"))
                    .shadow(color: Color("LightShadow"), radius: 6, x: -4, y: -4)
                    .shadow(color: Color("DarkShadow"), radius: 6, x: 2, y: 2)
            }
        }
    }
}
