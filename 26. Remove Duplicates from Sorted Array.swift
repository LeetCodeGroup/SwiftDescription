/**
 Question:
 Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
 
 Do not allocate extra space for another array, you must do this in place with constant memory.
 
 For example,
 Given input array nums = [1,1,2],
 
 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.
 
 
 注意：1.不要开辟额外空间(使用额外的数组)。
      2.假定给定都是排序好的数组。
*/

func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard !nums.isEmpty else {
        return 0
    }
    
    var shifted = nums.first!
    var count = 1
    for i in 1..<nums.count {
        if nums[i] != shifted {
            nums[count] = nums[i]
            count += 1
            shifted = nums[i]
        }
    }
    return count
}
