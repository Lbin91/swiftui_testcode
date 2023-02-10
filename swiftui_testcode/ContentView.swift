//
//  ContentView.swift
//  swiftui_testcode
//
//  Created by 엑소더스이엔티 on 2023/02/10.
//

import SwiftUI

struct ChatList: View {
    @ObservedObject var viewModel: DirectMessageViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            ScrollViewReader { scrollView in
              List {
                  ForEach(0..<viewModel.messages.count, id: \.self) { row in
                      let string = viewModel.messages[row]
                      Text(string)
                }
              }
              .onAppear() {
                  scrollView.scrollTo(viewModel.messages.count - 1)
              }
              .onChange(of: viewModel.messages.count) { newValue in
                  DispatchQueue.main.async {
                      scrollView.scrollTo(newValue - 1)
                  }
              }
            }
            
            Button("Click") {
                viewModel.createMsg()
            }
        }
    }
}

struct ChatList_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = DirectMessageViewModel()
        ChatList(viewModel: viewModel)
    }
}

class DirectMessageViewModel: ObservableObject {
    @Published var messages: [String] = ["11","21","41","14","22","11","14","21","11","41","14","22","11","14","21","41","14","22","11","14","21","41","14","22","11","14","21","41","14","22","11","14","21"]
    
    func createMsg() {
        let randomNum = Int.random(in: 0...100)
        messages.append("\(randomNum)")
    }
}
