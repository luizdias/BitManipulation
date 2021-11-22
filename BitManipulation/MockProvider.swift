//
//  MockProvider.swift
//  WordFinder
//
//  Created by Luiz Fernando Aquino Dias on 2021-11-20.
//

import Foundation

struct MockProvider {
    static func generateWords() -> [String] {
        let words = [
            "Apple",
            "Pie",
            "Shoe"
        ]
        return words
    }
}
