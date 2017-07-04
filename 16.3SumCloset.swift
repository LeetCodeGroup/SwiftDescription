/**
 Given an array S of n integers, find three integers in S such that the sum is closest to a given number, target. Return the sum of the three integers. You may assume that each input would have exactly one solution.
 
 For example, given array S = {-1 2 1 -4}, and target = 1.
 
 The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
 
 */

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count >= 3 else {
        return 0
    }
    let sortedNums = nums.sorted()
    var ans = sortedNums[0] + sortedNums[1] + sortedNums[2]
    for i in 0..<sortedNums.count - 2 {
        var j = i + 1, k = sortedNums.count - 1
        while j < k {
            let sum = sortedNums[i] + sortedNums[j] + sortedNums[k]
            if abs(target - ans) > abs(target - sum) {
                ans = sum
                if ans == target { return ans }
            }
            (sum > target) ? (k-=1) : (j+=1)
        }
    }
    return ans
}
