//
//  ContentView.swift
//  DiceRoller
//
//  Created by Darian Mitchell  on 2024/4/17.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps().bold())
                .foregroundStyle(.white)
            HStack{
                ForEach(1...numberOfDice, id: \.self) { _ in
                    DiceView()
                        .foregroundStyle(.white)
                }
            }
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
