//
//  MessageBubble.swift
//  NeumorphicChatController
//
//  Created by Macbook-pro on 06/07/23.
//

import SwiftUI

struct MessageBubble: View {
    
    var message: Message
    
    var body: some View {
        HStack {
            if message.user.isCurrentUser {
                Spacer()
            }
            Text(message.content)
                .frame(alignment: .leading)
                .padding()
                .foregroundColor(message.user.isCurrentUser ? .white : Color("IconColor"))
                .background {
                    if message.user.isCurrentUser {
                        LinearGradient(colors: [Color("Blue"), Color("BlueDark")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    } else {
                        Color("Background")
                    }
                }
                .cornerRadius(20)
                .shadow(color: Color("LightShadow"), radius: 6, x: -4, y: -4)
                .shadow(color: Color("DarkShadow"), radius: 6, x: 2, y: 2)
                .padding()
            
            if !message.user.isCurrentUser {
                Spacer()
            }
        }
        .padding(.leading, message.user.isCurrentUser ? 60 : 10)
        .padding(.trailing, message.user.isCurrentUser ? 10 : 60)
    }
}
