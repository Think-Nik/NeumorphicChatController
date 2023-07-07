//
//  ChatHelper.swift
//  NeumorphicChatController
//
//  Created by Macbook-pro on 06/07/23.
//

import Foundation
import Combine

class ChatHelper : ObservableObject {
    @Published var realTimeMessages: [Message] = []
    
    func sendMessage(_ chatMessage: Message) {
        realTimeMessages.append(chatMessage)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            var dummyMessage = chatMessage
            dummyMessage.user.isCurrentUser = false
            dummyMessage.user.name = "Bot"
            self.realTimeMessages.append(dummyMessage)
        }
    }
}
