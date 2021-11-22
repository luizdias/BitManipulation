//
//  ContentView.swift
//  BitManipulation
//
//  Created by Luiz Fernando Aquino Dias on 2021-11-21.
//

import SwiftUI

struct ContentView: View {
    @State private var firstText: String = ""
    @State private var secondText: String = ""
    @ObservedObject var contentController = ContentController()
    
    var body: some View {
        VStack(alignment: .center, spacing: 16.0) {
            Text("Calculate the bits").font(.headline)
                .padding()
            if !firstText.isEmpty && !secondText.isEmpty {
                Text("Press calculate button...")
            }
            TextField("Enter first integer here", text: $firstText).padding()
            TextField("Enter second integer here", text: $secondText).padding()
            Button("Calculate") {
                guard let firstInt = Int(firstText) else { return }
                guard let secondInt = Int(secondText) else { return }
                self.contentController.calculate(from: firstInt, secondNumber: secondInt)
            }
            Group{
                Text("Results: \(contentController.results)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
