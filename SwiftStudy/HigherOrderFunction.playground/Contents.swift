import Foundation

let cast = ["Vivien", "Marlon", "Kim", "Karl"]
let lowercaseNames = cast.map { $0.lowercased() }
// 'lowercaseNames' == ["vivien", "marlon", "kim", "karl"]
let letterCounts = cast.map { $0.count }
// 'letterCounts' == [6, 6, 3, 4]



//let numbers = [1, 2, 3, 4]
//let numberSum = numbers.reduce(0, { x, y in
//    x + y
//})
//// numberSum == 10
//
//
//
////let numbers = [1, 2, 3, 4]
//let mapped = numbers.map { Array(repeating: $0, count: $0) }
//// [[1], [2, 2], [3, 3, 3], [4, 4, 4, 4]]
//let flatMapped = numbers.flatMap { Array(repeating: $0, count: $0) }
//// [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
//
///// In fact, `s.flatMap(transform)`  is equivalent to
///// `Array(s.map(transform).joined())`.
//
//
//let possibleNumbers = ["1", "2", "three", "///4///", "5"]
//let mapped: [Int?] = possibleNumbers.map { str in Int(str) }
//// [1, 2, nil, nil, 5]
//let compactMapped: [Int] = possibleNumbers.compactMap { str in Int(str) }
//// [1, 2, 5]


let numbers = [1, 2, 3, 4]
let filteredNumbers = numbers.filter { $0 > 2 }
// 'filteredNumbers' == [3, 4]
