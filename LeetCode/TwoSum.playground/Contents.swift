import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var result = [Int]()
    
    for (index,value) in nums.enumerated() {
        
        guard index != 0 else {
            continue
        }
        
        for (i,j) in nums.enumerated() {
            
            if index == i {
                continue
            }
            
            if value + j == target {
                result.append(index)
                result.append(i)
                break
            }
        }
        
        if !result.isEmpty {
            return result.sorted()
        }
    }
    
    return result
}

twoSum([3,2,4], 6)
twoSum([3,2,3], 6)
twoSum([2,5,5,1], 10)
