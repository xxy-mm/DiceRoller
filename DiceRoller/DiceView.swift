//
//  DiceView.swift
//  DiceRoller
//
//  Created by Darian Mitchell  on 2024/4/17.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips = 1

    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)

            Button {
                withAnimation {
                    numberOfPips = Int.random(in: 1 ... 6)
                }
            } label: {
                Text("Roll")
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
