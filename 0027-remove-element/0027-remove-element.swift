class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var res = 0
        var list:[Int] = []
        for n in nums { 
            if n == val { continue }
            res += 1
            list.append(n)
        }
        nums = list
        return res
    }
}