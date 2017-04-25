/**
 Question:
     Implement atoi to convert a string to an integer.
     
     Hint: Carefully consider all possible input cases. If you want a challenge, please do not see below and ask yourself what are the possible input cases.
     
     Notes: It is intended for this problem to be specified vaguely (ie, no given input specs). You are responsible to gather all the input requirements up front.
 
*/




func myAtoi(_ str: String) -> Int {
    guard !str.isEmpty else {
        return 0
    }
    
    var newStr = "", flag = 0
    for char in str.characters {
        if char >= "0" && char <= "9" {
            newStr.append(char)
        } else if newStr.isEmpty && char == "-" && flag == 0{
            newStr.append(char)
        } else if newStr.isEmpty && char == "+" && flag == 0 {
            flag = 1
            continue
        } else if (newStr.characters.count == 0) && (char == " " || char == " ") && flag == 0{
            continue
        } else {
            break
        }
    }
    
    guard Int32(newStr) != nil else {
        if newStr == "" || newStr == "-" {
            return 0
        } else if newStr.contains("-") {
            return Int(Int32.min)
        } else {
            return Int(Int32.max)
        }
    }
    
    return Int(newStr)!
}
