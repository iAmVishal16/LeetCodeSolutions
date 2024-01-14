
// The code first squares each element in the input array, which takes O(n) time. 
// Then, it applies the quicksort algorithm to sort the squared array. Quicksort has an average time complexity of O(n log n). 
// Therefore, the overall time complexity of the code is O(n) + O(n log n), which simplifies to O(n log n). 

func sortedSquares(_ nums: [Int]) -> [Int] {
    var arr = nums
    var resultArray = [Int]()
    var i = 0
    
    var idx = 0
    for ele in arr {
        var sqrt = ele * ele
        arr[idx] = sqrt
        idx += 1
    }
    
    print(arr)
    
    // now apply quick sort to sort the array
    quickSort(&arr, 0, arr.count - 1)
    
    print(arr)
    return arr
}

func swap(_ arr: inout [Int], first: Int, sec: Int) {
    var temp = arr[first]
    arr[first] = arr[sec]
    arr[sec] = temp
}

func quickSort(_ arr: inout [Int], _ low: Int, _ high: Int) {
    if low >= high {
        return
    }
    
    var s = low
    var e = high
    var m = s + (e - s) / 2
    var p = arr[m]
    
    while s <= e {
        while arr[s] < p {
            s += 1
        }
        
        while arr[e] > p {
            e -= 1
        }
        
        if s <= e {
            swap(&arr, first: s, sec: e)
            s += 1
            e -= 1
        }
        
    }
    
    quickSort(&arr, low, e)
    quickSort(&arr, s, high)
}

sortedSquares(nums)
