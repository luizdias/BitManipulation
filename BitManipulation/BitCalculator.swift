//
//  Finder.swift
//  WordFinder
//
//  Created by Luiz Fernando Aquino Dias on 2021-11-20.
//

import Foundation

class BitCalculator {        
    func calculateBits(from firstNumber: Int, secondNumber: Int) -> Int? {
        let results = flippedCount(firstNumber, secondNumber)        
        return results
    }
    
    func flippedCount(_ a: Int, _ b: Int) -> Int {
        var num: Int = (a ^ b)
        var count: Int = 0
        
        // Count number of active bits
        while (num > 0) {
            count += 1
            num = num & (num - 1)
        }
        print("\n Output : ", (count), terminator: "")
        return count
    }
}
