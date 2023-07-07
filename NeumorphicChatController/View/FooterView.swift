//
//  FooterView.swift
//  NeumorphicChatController
//
//  Created by Macbook-pro on 06/07/23.
//

import SwiftUI

struct FooterView: View {
    @State var message: String = ""
    @State var isPressed: Bool = false
    @ObservedObject var chatHelper: ChatHelper
    
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .cornerRadius(20)
            .frame(height: 100)
            .background {
                Color("Background")
            }
            .overlay {
                GeometryReader { geometry in
                    HStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 60)
                            .foregroundColor(.clear)
                            .overlay {
                                HStack(spacing: 20) {
                                    NeumorphicShape(isHighlighted: true, shape: RoundedRectangle(cornerRadius: 20))
                                        .frame(width: geometry.size.width - 120, height: 50)
                                        .overlay {
                                            TextField("Write a message", text: $message)
                                                .padding()
                                                .autocorrectionDisabled()
                                        }
                                    Button {
                                        
                                    } label: {
                                        
                                    }
                                    .frame(width: 50, height: 50)
                                    .overlay(content: {
                                        NeumorphicShape(isHighlighted: isPressed, shape: Circle())
                                            .frame(width: 50)
                                            .overlay {
                                                Image(systemName: "paperplane.fill")
                                                    .foregroundColor(.blue)
                                            }
                                    })
                                    .onTapGesture(perform: {
                                        if !message.isEmpty {
                                            chatHelper.sendMessage(Message(content: message, user: User(name: "", avatar: "", isCurrentUser: true)))
                                            message = ""
                                        }
                                    })
                                    .onLongPressGesture {
                                        
                                    } onPressingChanged: { _ in
                                        isPressed.toggle()
                                    }
                                }
                                .padding()
                            }
                    }
                }
                .padding(.bottom, 30)
            }
    }
}
