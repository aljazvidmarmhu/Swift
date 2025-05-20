import Cocoa

enum SquareRootError: Error {
    case outOfBoundsError, noRootError
}

func squareroot(_ number: Int) throws -> Int {
    if number < 1 && number > 10_000 {
        throw SquareRootError.outOfBoundsError
    }
    
    for i in 1...number {
        if i * i == number {
            return i
        }
    }
    throw SquareRootError.noRootError
}


let num = 144

do {
    let result = try squareroot(num)
    print("Square root of \(num) is \(result)")
} catch SquareRootError.outOfBoundsError {
    print("out of bounds")
} catch SquareRootError.noRootError {
    print("This integer has no integer square root")
} catch {
    print("Something went wrong")
}
