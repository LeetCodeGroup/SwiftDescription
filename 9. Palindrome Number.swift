//
//  9. Palindrome Number.swift
//  回文数(不能为负数)
//  例子：1234321
//
//  Created by 黄睿 on 2017/4/24.
//  Copyright © 2017年 ipaynow. All rights reserved.
//

func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else {
        return false
    }
    
    var sum = 0, mod = 0, num = x
    while num != 0 {
        mod = num % 10
        sum = sum * 10 + mod
        num = num / 10
    }
    
    if sum == x {
        return true
    } else {
        return false
    }
}
