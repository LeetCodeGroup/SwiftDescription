/* *
 Reverse digits of an integer.
 
 Example1: x = 123, return 321
 Example2: x = -123, return -321

 
 Note:
 The input is assumed to be a 32-bit signed integer. Your function should return 0 when the reversed integer overflows.
 
 
 
*/

func reverse(_ x: Int) -> Int {
    var reverseValue = 0, x = x
    while x != 0 {
        reverseValue = reverseValue * 10 + x % 10
        x = x / 10
    }
    guard reverseValue > Int(Int32.min) && reverseValue < Int(Int32.max) else {
        return 0
    }
    return reverseValue
    
}
