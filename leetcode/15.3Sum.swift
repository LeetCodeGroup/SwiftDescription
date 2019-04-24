/*
 Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
 
 Note: The solution set must not contain duplicate triplets.
 不能有重复的数组
 
*/
func threeSum(_ nums: [Int]) -> [[Int]] {
    // 过滤不满足条件的输入
    guard nums.count != 0 && nums.count != 1 && nums.count != 2 else {
        return []
    }
    // 从低到高排序
    let sortedArray = nums.sorted()
    var resultArray = [[Int]]()
    for i in 0...sortedArray.count - 3 {
        // 首项去重
        if i==0 || (i > 0 && sortedArray[i] != sortedArray[i-1]) {
            var j = i + 1, k = sortedArray.count - 1
            while j < k {
                if sortedArray[i] + sortedArray[j] + sortedArray[k] == 0 {
                    resultArray.append([sortedArray[i],sortedArray[j],sortedArray[k]])
                    // 去重
                    while j < k && sortedArray[j] == sortedArray[j+1] {
                        j += 1
                    }
                    while j < k && sortedArray[k] == sortedArray[k-1] {
                        k -= 1
                    }
                    j += 1
                    k -= 1
                } else if sortedArray[i] + sortedArray[j] + sortedArray[k] < 0{
                    j += 1
                } else {
                    k -= 1
                }
            }
        }
    }
    return resultArray
}

