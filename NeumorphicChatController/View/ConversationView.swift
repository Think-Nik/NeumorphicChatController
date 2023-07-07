//
//  ConversationView.swift
//  NeumorphicChatController
//
//  Created by Macbook-pro on 06/07/23.
//

import SwiftUI

struct ConversationView: View {
    
    @ObservedObject var chatHelper: ChatHelper
    
    var body: some View {
        
        ScrollView(.vertical) {
            ScrollViewReader { scrollView in
                LazyVStack {
                    ForEach(chatHelper.realTimeMessages, id: \.self) { message in
                        MessageBubble(message: message)
                            .listRowSeparator(.hidden)
                    }
                    .onChange(of: chatHelper.realTimeMessages) { messages in
                        withAnimation {
                            scrollView.scrollTo(chatHelper.realTimeMessages[chatHelper.realTimeMessages.endIndex - 1])
                        }
                    }
                }
            }
        }
    }
}
