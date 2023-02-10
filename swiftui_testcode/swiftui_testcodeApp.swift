//
//  swiftui_testcodeApp.swift
//  swiftui_testcode
//
//  Created by 엑소더스이엔티 on 2023/02/10.
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
