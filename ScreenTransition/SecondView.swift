//
//  SecondView.swift
//  ScreenTransition
//
//  Created by 内田豊彦 on 2024/08/25.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            Text("Second View")
        }
    }
}

#Preview {
    SecondView()
}
