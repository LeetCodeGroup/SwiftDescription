/**
Remember the story of Little Match Girl? By now, you know exactly what matchsticks the little match girl has, please find out a way you can make one square by using up all those matchsticks. You should not break any stick, but you can link them up, and each matchstick must be used exactly one time.

Your input will be several matchsticks the girl has, represented with their stick length. Your output will either be true or false, to represent whether you could make one square using all the matchsticks the little match girl has.

Example 1:
Input: [1,1,2,2,2]
Output: true

Explanation: You can form a square with length 2, one side of the square came two sticks with length 1.
Example 2:
Input: [3,3,3,3,4]
Output: false

Explanation: You cannot find a way to form a square with all the matchsticks.
Note:
The length sum of the given matchsticks is in the range of 0 to 10^9.
The length of the given matchstick array will not exceed 15.
**/

class Solution {
    func makesquare(_ nums: [Int]) -> Bool {
        /// 1.特殊条件判断
        guard  nums.count >= 4 else { return false }
        let sum = nums.reduce(0, +)
        if sum % 4 != 0 {
            return false
        }
        /// 2.分四边的算法
        var sides: [Int] = Array(repeating: 0, count: 4)
        return dfs(nums.sorted(by: >), 0, &sides, sum / 4)
    }
    
    
    /// 深度优先
    ///
    /// - Parameters:
    ///   - nums: 数组元素
    ///   - index: 索引
    ///   - sides: 边
    ///   - target: 边长
    /// - Returns: 结果
    func dfs(_ nums: [Int], _ index: Int, _ sides: inout [Int], _ target: Int) -> Bool {
        if index == nums.count {
            return sides[0] == sides[1] && sides[0] == sides[2] && sides[0] == sides[3] && sides[0] == target
        }
        
        for i in 0 ..< sides.count {
            if sides[i] + nums[index] > target {
                continue
            }
            sides[i] += nums[index]
            if dfs(nums, index + 1, &sides, target) {
                return true
            }
            sides[i] -= nums[index]
        }
        return false
    }
}