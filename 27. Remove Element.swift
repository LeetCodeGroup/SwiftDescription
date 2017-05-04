/**
//  27. Remove Element.swift
 Given an array and a value, remove all instances of that value in place and return the new length.
 
 Do not allocate extra space for another array, you must do this in place with constant memory.
 
 The order of elements can be changed. It doesn't matter what you leave beyond the new length.
 
 Example:
 Given input array nums = [3,2,2,3], val = 3
 
 Your function should return length = 2, with the first two elements of nums being 2.
 
 Subscribe to see which companies asked this question.
 
 这道题允许提交的答案也很有问题啊
*/



func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var count = 0
    for (index,value) in nums.enumerated() {
        if val != value {
            nums[count] = nums[index]
            count += 1
        }
    }
    return count
}
