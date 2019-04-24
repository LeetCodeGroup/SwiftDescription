/*
 Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
 3
 / \
 9  20
 /  \
 15   7
 return its level order traversal as:
 [
 [3],
 [9,20],
 [15,7]
 ]
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

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else {
        return []
    }
    
    var result = [[TreeNode]]()
    var level = [TreeNode]()
    
    level.append(root)
    while level.count != 0 {
        result.append(level)
        var nextlevel = [TreeNode]()
        for node in level {
            if let leftNode = node.left {
                nextlevel.append(leftNode)
            }
            if let rightNode = node.right {
                nextlevel.append(rightNode)
            }
        }
        level = nextlevel
    }
    let finalResult = result.map {$0.map{ $0.val }}
    return finalResult
}
