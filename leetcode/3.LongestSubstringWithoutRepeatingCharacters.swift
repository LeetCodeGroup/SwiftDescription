//Question:
/** Given a string, find the length of the longest substring without repeating characters.
 Examples:
 Given "abcabcbb", the answer is "abc", which the length is 3.
 Given "bbbbb", the answer is "b", with the length of 1.
 Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */


// 思路分析：利用集合Set的元素唯一性来存放字符串中的字符，需要将字符串中的字符放入数组中遍历

class Solution {
    class func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.characters.count != 0 else {
            return 0
        }
        
        var characterArray = [Character](s.characters)
        var maxLength = 0
        var recordValue = 0 // 记录下标
        var countSet = Set<Character>()
        
        for i in 0..<characterArray.count {
            let characterValue = characterArray[i]
            if countSet.contains(characterValue) {
                if maxLength < countSet.count {
                    maxLength = countSet.count
                }
                // while循环的意义在于发现"重复项"之后将"之前项"之前的所有元素从Set中移除，保证setcount的数目
                while characterArray[recordValue] != characterArray[i] {
                    countSet.remove(characterArray[recordValue])
                    recordValue += 1
                }
                recordValue += 1
            } else {
                countSet.insert(characterValue)
            }
        }
        // 考虑完全没有重复字符的情况
        maxLength = max(maxLength, characterArray.count - recordValue)
        return maxLength
    }
}










