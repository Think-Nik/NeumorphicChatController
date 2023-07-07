//
//  HeaderView.swift
//  NeumorphicChatController
//
//  Created by Macbook-pro on 06/07/23.
//

import SwiftUI

struct HeaderView: View {
    var height: CGFloat
    @State var isPressed: Bool = false
    @State var isOnline: Bool = true
    var body: some View {
        Rectangle()
            .frame(height: height)
            .cornerRadius(20)
            .shadow(radius: 10)
            .foregroundColor(Color("Background"))
            .overlay {
                HStack {
                    Button {
                       
                    } label: {
                        
                    }
                    .overlay {
                        NeumorphicShape(isHighlighted: isPressed, shape: RoundedRectangle(cornerRadius: 10))
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.clear)
                                Image(systemName: "chevron.backward")
                                    .foregroundColor(Color.gray)
                            })
                            .frame(width: 35, height: 35)
                        .padding(.top, 40)
                    }
                    .padding(.leading)
                    
                    .onLongPressGesture {
                    } onPressingChanged: { _ in
                        isPressed.toggle()
                    }
                    
                    Spacer()
                        .frame(width: 40)
                    NeumorphicShape(isHighlighted: false, shape: Circle())
                        .frame(width: 50, height: 50)
                    .overlay {
                        Image("Avatar-Profile-PNG-Photos")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                    .padding(.top, 40)
                    Text("Nikhil")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color("IconColor"))
                        .padding(.top, 40)
                        .padding(.leading, 10)
                    Spacer()
                    .padding(.top, 40)
                }
                .padding(30)
            }
    }
}
