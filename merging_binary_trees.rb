# Definition for a binary tree node.
#https://leetcode.com/problems/merge-two-binary-trees/solution/

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
def merge_trees(t1, t2)
    if t1 && t2
        v = t1.val + t2.val
        t3 = TreeNode.new(v)
        t3.left = merge_trees(t1 ? t1.left : nil,t2 ? t2.left : nil)
        t3.right = merge_trees(t1 ? t1.right : nil, t2 ? t2.right : nil)
        return t3
    end
    return t1 ? t1 : t2
end

puts merge_trees([1,3,2,5],[2,1,3,4,7])


