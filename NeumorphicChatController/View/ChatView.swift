//
//  ChatView.swift
//  NeumorphicChatController
//
//  Created by Macbook-pro on 03/07/23.
//

import SwiftUI
import Combine

struct ChatView: View {
    
    @StateObject var chatHelper = ChatHelper()
    @ObservedObject private var keyboard = KeyboardResponder()
    
    var body: some View {
        VStack() {
            HeaderView(height: 150)
            ConversationView(chatHelper: chatHelper)
            FooterView(chatHelper: chatHelper)
        }
        .background(content: {
            Color("Background")
        })
        .padding(.bottom, keyboard.currentHeight)
        .edgesIgnoringSafeArea(.all)
    }
}
