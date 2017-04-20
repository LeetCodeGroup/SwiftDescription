/**
 Question:
     Given two binary strings, return their sum (also a binary string).
     
     For example,
     a = "11"
     b = "1"
     Return "100".
*/

func addBinary(_ a: String, _ b: String) -> String {
    var sum = 0, carry = 0, result = ""
    let aArray = [Character](a.characters), bArray = [Character](b.characters)
    var i = aArray.count - 1, j = bArray.count - 1
    
    while i >= 0 || j >= 0 || carry > 0 {
        sum = carry
        if i >= 0 {
            sum += Int(String(aArray[i]))!
            i -= 1
        }
        if j >= 0 {
            sum += Int(String(bArray[j]))!
            j -= 1
        }
        carry = sum / 2
        sum = sum % 2
        result = String(sum) + result
    }
    return result
}
