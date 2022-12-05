//
//  AdventofCode2022
//
//  Created by Miles Cumiskey on 12/3/22.

import Foundation

let d3input = d3data.split(separator: "\n").map{ String($0) }

enum Priority: Int, Equatable {
    case a = 1
    case b = 2
    case c = 3
    case d = 4
    case e = 5
    case f = 6
    case g = 7
    case h = 8
    case i = 9
    case j = 10
    case k = 11
    case l = 12
    case m = 13
    case n = 14
    case o = 15
    case p = 16
    case q = 17
    case r = 18
    case s = 19
    case t = 20
    case u = 21
    case v = 22
    case w = 23
    case x = 24
    case y = 25
    case z = 26
    case A = 27
    case B = 28
    case C = 29
    case D = 30
    case E = 31
    case F = 32
    case G = 33
    case H = 34
    case I = 35
    case J = 36
    case K = 37
    case L = 38
    case M = 39
    case N = 40
    case O = 41
    case P = 42
    case Q = 43
    case R = 44
    case S = 45
    case T = 46
    case U = 47
    case V = 48
    case W = 49
    case X = 50
    case Y = 51
    case Z = 52
}

func d3p1 () {
    var totalPriority = 0
    
    for i in 0...d3input.count-1 {
        var misplacedItem = findCommonItem(rucksack: d3input[i])
        
        switch misplacedItem {
            case "a":
                totalPriority = totalPriority + 1
            case "b":
                totalPriority = totalPriority + 2
            case "c":
                totalPriority = totalPriority + 3
            case "d":
                totalPriority = totalPriority + 4
            case "e":
                totalPriority = totalPriority + 5
            case "f":
                totalPriority = totalPriority + 6
            case "g":
                totalPriority = totalPriority + 7
            case "h":
                totalPriority = totalPriority + 8
            case "i":
                totalPriority = totalPriority + 9
            case "j":
                totalPriority = totalPriority + 10
            case "k":
                totalPriority = totalPriority + 11
            case "l":
                totalPriority = totalPriority + 12
            case "m":
                totalPriority = totalPriority + 13
            case "n":
                totalPriority = totalPriority + 14
            case "o":
                totalPriority = totalPriority + 15
            case "p":
                totalPriority = totalPriority + 16
            case "q":
                totalPriority = totalPriority + 17
            case "r":
                totalPriority = totalPriority + 18
            case "s":
                totalPriority = totalPriority + 19
            case "t":
                totalPriority = totalPriority + 20
            case "u":
                totalPriority = totalPriority + 21
            case "v":
                totalPriority = totalPriority + 22
            case "w":
                totalPriority = totalPriority + 23
            case "x":
                totalPriority = totalPriority + 24
            case "y":
                totalPriority = totalPriority + 25
            case "z":
                totalPriority = totalPriority + 26
            case "A":
                totalPriority = totalPriority + 27
            case "B":
                totalPriority = totalPriority + 28
            case "C":
                totalPriority = totalPriority + 29
            case "D":
                totalPriority = totalPriority + 30
            case "E":
                totalPriority = totalPriority + 31
            case "F":
                totalPriority = totalPriority + 32
            case "G":
                totalPriority = totalPriority + 33
            case "H":
                totalPriority = totalPriority + 34
            case "I":
                totalPriority = totalPriority + 35
            case "J":
                totalPriority = totalPriority + 36
            case "K":
                totalPriority = totalPriority + 37
            case "L":
                totalPriority = totalPriority + 38
            case "M":
                totalPriority = totalPriority + 39
            case "N":
                totalPriority = totalPriority + 40
            case "O":
                totalPriority = totalPriority + 41
            case "P":
                totalPriority = totalPriority + 42
            case "Q":
                totalPriority = totalPriority + 43
            case "R":
                totalPriority = totalPriority + 44
            case "S":
                totalPriority = totalPriority + 45
            case "T":
                totalPriority = totalPriority + 46
            case "U":
                totalPriority = totalPriority + 47
            case "V":
                totalPriority = totalPriority + 48
            case "W":
                totalPriority = totalPriority + 49
            case "X":
                totalPriority = totalPriority + 50
            case "Y":
                totalPriority = totalPriority + 51
            case "Z":
                totalPriority = totalPriority + 52
            default:
                totalPriority = totalPriority + 0
        }
        
    }
    print(totalPriority)
}

func d3p2 () {
    var totalPriority = 0
    
    for i in stride(from: 0, to: d3input.count, by: 3) {
        let badges = findCommonItemBetweenThree(rucksack1: d3input[i],rucksack2: d3input[i+1], rucksack3: d3input[i+2])
        
        print(badges)
        
        switch badges {
            case "a":
                totalPriority = totalPriority + 1
            case "b":
                totalPriority = totalPriority + 2
            case "c":
                totalPriority = totalPriority + 3
            case "d":
                totalPriority = totalPriority + 4
            case "e":
                totalPriority = totalPriority + 5
            case "f":
                totalPriority = totalPriority + 6
            case "g":
                totalPriority = totalPriority + 7
            case "h":
                totalPriority = totalPriority + 8
            case "i":
                totalPriority = totalPriority + 9
            case "j":
                totalPriority = totalPriority + 10
            case "k":
                totalPriority = totalPriority + 11
            case "l":
                totalPriority = totalPriority + 12
            case "m":
                totalPriority = totalPriority + 13
            case "n":
                totalPriority = totalPriority + 14
            case "o":
                totalPriority = totalPriority + 15
            case "p":
                totalPriority = totalPriority + 16
            case "q":
                totalPriority = totalPriority + 17
            case "r":
                totalPriority = totalPriority + 18
            case "s":
                totalPriority = totalPriority + 19
            case "t":
                totalPriority = totalPriority + 20
            case "u":
                totalPriority = totalPriority + 21
            case "v":
                totalPriority = totalPriority + 22
            case "w":
                totalPriority = totalPriority + 23
            case "x":
                totalPriority = totalPriority + 24
            case "y":
                totalPriority = totalPriority + 25
            case "z":
                totalPriority = totalPriority + 26
            case "A":
                totalPriority = totalPriority + 27
            case "B":
                totalPriority = totalPriority + 28
            case "C":
                totalPriority = totalPriority + 29
            case "D":
                totalPriority = totalPriority + 30
            case "E":
                totalPriority = totalPriority + 31
            case "F":
                totalPriority = totalPriority + 32
            case "G":
                totalPriority = totalPriority + 33
            case "H":
                totalPriority = totalPriority + 34
            case "I":
                totalPriority = totalPriority + 35
            case "J":
                totalPriority = totalPriority + 36
            case "K":
                totalPriority = totalPriority + 37
            case "L":
                totalPriority = totalPriority + 38
            case "M":
                totalPriority = totalPriority + 39
            case "N":
                totalPriority = totalPriority + 40
            case "O":
                totalPriority = totalPriority + 41
            case "P":
                totalPriority = totalPriority + 42
            case "Q":
                totalPriority = totalPriority + 43
            case "R":
                totalPriority = totalPriority + 44
            case "S":
                totalPriority = totalPriority + 45
            case "T":
                totalPriority = totalPriority + 46
            case "U":
                totalPriority = totalPriority + 47
            case "V":
                totalPriority = totalPriority + 48
            case "W":
                totalPriority = totalPriority + 49
            case "X":
                totalPriority = totalPriority + 50
            case "Y":
                totalPriority = totalPriority + 51
            case "Z":
                totalPriority = totalPriority + 52
            default:
                totalPriority = totalPriority + 0
        }
        
    }
    print(totalPriority)
}

func findCommonItem(rucksack: String) -> String {
    let compartment1 = rucksack.prefix(rucksack.count / 2)
    let compartment2 = rucksack.suffix(rucksack.count / 2)
    
    for i in 0...compartment1.count-1 {
        let c1Index = compartment1[compartment1.index(compartment1.startIndex, offsetBy: i)]
        for j in 0...compartment2.count-1 {
            let c2Index = compartment2[compartment2.index(compartment2.startIndex, offsetBy: j)]
            if(c1Index == c2Index) {
                return(String(c1Index))
            }
        }
    }
    
    return "none"
}

func findCommonItemBetweenThree(rucksack1: String, rucksack2: String, rucksack3: String) -> String {

    for i in 0...rucksack1.count-1 {
        let rucksack1Index = rucksack1[rucksack1.index(rucksack1.startIndex, offsetBy: i)]
        for j in 0...rucksack2.count-1 {
            let rucksack2Index = rucksack2[rucksack2.index(rucksack2.startIndex, offsetBy: j)]
            for k in 0...rucksack3.count-1 {
                let rucksack3Index = rucksack3[rucksack3.index(rucksack3.startIndex, offsetBy: k)]
                if((rucksack1Index == rucksack2Index) && (rucksack2Index == rucksack3Index)) {
                    return String(rucksack1Index)
                }
            }
        }
    }
    
    return "none"
}


