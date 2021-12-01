import UIKit

/*
7. Reverse Integer

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

Example 1:

Input: x = 123
Output: 321
Example 2:

Input: x = -123
Output: -321
Example 3:

Input: x = 120
Output: 21
Example 4:

Input: x = 0
Output: 0
*/

func reverse(_ x: Int) -> Int {
    if x == 0 {
        return 0
    }
    
    var isMinus = false
    var result: [String] = []
    
    for value in String(x) {
        if value == "-" {
            isMinus = true
            continue
        }
        result.append(String(value))
    }
    
    var finalResult = result.reversed().joined()
    
    if isMinus {
        finalResult.insert("-", at: finalResult.startIndex)
    }
    
    if let int32Result = Int32(finalResult) {
        return Int(int32Result)
    }
    
    return 0
}

reverse(-123)
reverse(123)
reverse(120)
reverse(0)
