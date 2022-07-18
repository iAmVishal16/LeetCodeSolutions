import UIKit

var greeting = "Hello, LeetCode"

/**
 Median of Two Sorted Arrays
 https://leetcode.com/problems/median-of-two-sorted-arrays/
 */

// Solution Using Higher Order Function:
var nums1 = [1,2], nums2 = [3,4]
func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var mergeArray = nums1 + nums2
    mergeArray = mergeArray.sorted()
    print(mergeArray.count)
    if (mergeArray.count - 1) % 2 == 0 {
        // Even
        let m = (mergeArray.count - 1) / 2
        return Double(mergeArray[m])
    } else {
        // odd
        let m = (mergeArray.count - 1) / 2
        print("\(m), \(mergeArray[m]) + \(mergeArray[m+1])")
        let median = (Double(mergeArray[m]) + Double(mergeArray[m+1]))  / 2
        return median
    }
}

var median = findMedianSortedArrays(nums1, nums2)
print("Median of Two Sorted Arrays \(nums1), \(nums2) = \(median)")
/*__________________________________________________________________*/

// Withoud Using Higher Order Function
func findMedianSortedArraysWithoudHOFunction(_ nums1: inout [Int], _ nums2: inout [Int]) -> Double{
    var i = 0, j = 0
    var mergeArray = [Int]()
    while i < nums1.count && j < nums2.count {
        if nums1[i] < nums2[j] {
            mergeArray.append(nums1[i])
            i += 1
        } else {
            mergeArray.append(nums2[j])
            j += 1
        }
    }
    
    while i < nums1.count {
        mergeArray.append(nums1[i])
        i += 1
    }
    
    while j < nums2.count {
        mergeArray.append(nums2[j])
        j += 1
    }
        
    if (mergeArray.count - 1) % 2 == 0 {
        let m = (mergeArray.count - 1) / 2
        return Double(mergeArray[m])
    } else {
        let m = (mergeArray.count - 1) / 2
        print("\(m), \(mergeArray[m]) + \(mergeArray[m+1])")
        let median = (Double(mergeArray[m]) + Double(mergeArray[m+1]))  / 2
        return median
    }
}

median = findMedianSortedArraysWithoudHOFunction(&nums1, &nums2)
print(median)
