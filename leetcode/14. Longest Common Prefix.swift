/**
  Question:Write a function to find the longest common prefix string amongst an array of strings.
 
  核心思路:取第一个string作为标准,遍历数组对第一个string进行操作。
*/

func longestCommonPrefix(_ strs: [String]) -> String {
    guard strs.count > 0 else {
        return ""
    }
    var standard = [Character](strs[0].characters)
    
    for str in strs {
        var compare = [Character](str.characters)
        
        // 遇短则截
        if standard.count > compare.count {
            standard = Array(standard[0..<compare.count])
        }
        
        for i in 0..<standard.count {
            if standard[i] != compare[i] {
                standard = Array(standard[0..<i])
                break
            }
        }
    }
    
    return String(standard)
}
