/**
 3.Add Two Numbers.swift
 
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 
*/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var flag = 0, sum = 0
    let originNode = ListNode(0)
    var currentNode = originNode
    var l1 = l1, l2 = l2
    
    while l1 != nil || l2 != nil || flag != 0 {
        sum = flag
        
        if l1 != nil {
            sum += l1!.val
            l1 = l1!.next
        }
        if l2 != nil {
            sum += l2!.val
            l2 = l2!.next
        }
        
        flag = sum / 10
        sum = sum % 10
        // ListNode是一个reference type,Point is a powerful weapon.
        currentNode.next = ListNode(sum)
        currentNode = currentNode.next!
    }
    return originNode.next
}
