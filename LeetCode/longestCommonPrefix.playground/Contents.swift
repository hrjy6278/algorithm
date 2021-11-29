

import Foundation

//Input: strs = ["flower","flow","flight"]
//Output: "fl"
//Example 2:
//
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.


func longestCommonPrefix(_ strs: [String]) -> String {
    var result: String = ""
    var length = Int.max
    
    var array = [String]()
    //제일 작은 문자열 뽑기(비교대상)
    strs.forEach { str in
        array.append(str)
        if str.count < length {
            length = str.count
            result = str
        }
    }
    //배열에 비교대상을 제거함.
    if array.contains(result) {
        let index = array.firstIndex(of: result)!
        array.remove(at: index)
    }
    
    //hasPrefix 메소드를 사용하여 접두사가 맞지 않는 경우
    //비교대상의 마지막 문자열을 제거함.
    for index in 0..<array.count {
        while array[index].hasPrefix(result) == false {
            result.removeLast()
        }
    }
    
    return result
}

longestCommonPrefix(["flower","flow","flight"])

longestCommonPrefix(["dog","racecar","car"])
