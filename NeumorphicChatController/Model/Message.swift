//
//  Message.swift
//  NeumorphicChatController
//
//  Created by Macbook-pro on 06/07/23.
//

import Foundation


struct Message: Hashable {
    var id = UUID()
    var content: String
    var user: User
}
struct User: Hashable {
    var name: String
    var avatar: String
    var isCurrentUser: Bool = false
}
