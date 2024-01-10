class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var ans:[Int] = [-1, -1]
        let start = search(nums, target, true)
        let end = search(nums, target, false) 
        
        ans[0] = start
        ans[1] = end
        return ans
    }
    
    func search(_ nums: [Int], _ target: Int, _ isStartIndex: Bool) -> Int {
        var ans = -1
        var low = 0
        var high = nums.count - 1
        
        while (low <= high) {
         
            var mid = (low + high) / 2

            if nums[mid] > target {
                high = mid - 1
            } else if nums[mid] < target {
                low = mid + 1
            } else {
                // potential ans is found
                ans = mid
                if isStartIndex {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            }
        }
        
        return ans
    }
}
