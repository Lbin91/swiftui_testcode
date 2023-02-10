//
//  swiftui_testcodeApp.swift
//  swiftui_testcode
//
//  Created by Bongjin Lee  on 2023/02/10.
//

import SwiftUI

@main
struct swiftui_testcodeApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = DirectMessageViewModel()
            ChatList(viewModel: viewModel)
        }
    }
}
