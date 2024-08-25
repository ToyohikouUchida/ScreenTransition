//
//  ContentView.swift
//  ScreenTransition
//
//  Created by 内田豊彦 on 2024/08/25.
//

import SwiftUI

struct ContentView: View {
    @State var isShowSecondView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    SecondView()
                } label: {
                    Text("SecondViewへナビ遷移")
                }
                
                Button("SecondViewへモーダル遷移"){
                    isShowSecondView = true
                }
                .padding()
                .sheet(isPresented: $isShowSecondView) {
                    SecondView()
                        .presentationDetents([.medium])
                }
            }
            .padding()
            .navigationTitle("画面1")
        }
    }
}

#Preview {
    ContentView()
}
