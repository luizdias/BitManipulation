//
//  ContentController.swift
//  WordFinder
//
//  Created by Luiz Fernando Aquino Dias on 2021-11-20.
//

import Combine
import SwiftUI

class ContentController: ObservableObject {
    @Published var results = 0

    func calculate(from firstNumber: Int, secondNumber: Int) {
        let calculator = BitCalculator()
        self.results = calculator.calculateBits(from: firstNumber, secondNumber: secondNumber) ?? 0
    }
}
