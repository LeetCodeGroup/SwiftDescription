/**Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.

You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.

Example 1:
Input:
Tree 1                     Tree 2
   1                         2
  / \                       / \
 3   2                     1   3
/                           \   \
5                             4   7
Output:
Merged tree:
    3
   / \
  4   5
 / \   \
5   4   7
Note: The merging process must start from the root nodes of both trees.
*/

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        guard let node1 = t1, let node2 = t2 else {
            if t1 == nil { return t2 } else { return t1}
        }
        
        node1.val = node1.val + node2.val
        node1.left = mergeTrees(node1.left, node2.left)
        node1.right = mergeTrees(node1.right, node2.right)
        return node1
    }
}
