// @author Aljaz Vidmar

// This code works with inline closures

import Cocoa

let sayHello = { (name: String) -> String in
        "Hi \(name)!"
}
sayHello("Alice")

let team = ["Alice", "Bob", "Charlie"]

let sorted = team.sorted { a, b in
    if a == "Bob" {
        return true
    } else if b == "Bob" {
        return false
    }
    return a < b
}

print(sorted)

let reversed = team.sorted{ $0 > $1}

print(reversed)


let uppercase = team.map { $0.uppercased() }

print(uppercase)

let luckyNumbers = [7,4,38,21,16,15,12,33,31,41]

let filtered = luckyNumbers.filter { $0 != 7 } // step by step
let sortedAcendingly = filtered.sorted{ $0 > $1 }
print(sortedAcendingly)

let mappedLuckyNumbers = sortedAcendingly.map { "Lucky Number: \($0)"}

for string in mappedLuckyNumbers {
    print(string)
}


let resultShort = luckyNumbers.filter{ $0 != 7 }.sorted(by: >).map { "Lucky Number: \($0)"} // all in one

for item in resultShort {
    print(item)
}

luckyNumbers.filter{ $0 != 7 }.sorted(by: >).map { "Lucky Number: \($0)"}.forEach { print($0) } // one liner, but harder to read


