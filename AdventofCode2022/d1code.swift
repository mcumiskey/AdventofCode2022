//
//  d1code.swift
//  AdventofCode2022
//
//  Created by Miles Cumiskey on 12/3/22.
//

import Foundation

let day1input = d1input.split(separator: "\n", omittingEmptySubsequences: false).map {
    Int($0) ?? -1
}

//make an array of the total number of calories each elf is carrying, then sort it in big > small order
func d1SimplifyInput () -> [Int] {
    var simplified = Array<Int>()
    var calories = 0
    for i in 0..<day1input.count-1 {
        if (day1input[i] == -1) {
            simplified.append(calories)
            calories = 0
        } else {
            calories = calories + day1input[i]
        }
    }
    simplified.sort(by: >)
    return simplified
}

var simplifiedD1 = d1SimplifyInput()

func printD1 () {
    //print the array
    print(simplifiedD1)
    //ADD the top three calories for the bonus star
    print((simplifiedD1[0] + simplifiedD1[1] + simplifiedD1[2]))
}


