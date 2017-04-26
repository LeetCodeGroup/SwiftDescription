/**
 There are two sorted arrays nums1 and nums2 of size m and n respectively.
 
 Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
 */

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var totalNumbers = nums1 + nums2
    totalNumbers.sort()
    if totalNumbers.count % 2 == 0 {
        let index1 = totalNumbers.count / 2
        let index2 = index1 - 1
        return (Double(totalNumbers[index1]) + Double(totalNumbers[index2])) / 2
    }
    let index = totalNumbers.count / 2
    return Double(totalNumbers[index])
}
