var originalArr = [3 , 7 , 1 ,2, 8, 4, 5]
var arr = [3 , 7 , 1 ,2, 8, 4, 5]

// Quick Sort Algorithm 
// Find a Pivot element, you can select any random number or select mid element
// if ele < p should lies on RHS and ele > p lies on LHS else swap the elements
func quickSort(_ arr: inout [Int], _ start: Int, _ end: Int) {
    
    if start >= end {
        return
    }
    
    var s = start
    var e = end
    let m = s + (e - s) / 2
    let p = arr[m]
    
    while s <= e {
        while arr[s] < p {
            s += 1
        }
        
        while arr[e] > p {
            e -= 1
        }
        
        if s <= e {
            let temp = arr[s]
            arr[s] = arr[e]
            arr[e] = temp
            s += 1
            e -= 1
        }
    }
    
    quickSort(&arr, start, e)
    quickSort(&arr, s, end)
}

quickSort(&arr, 0, arr.count - 1)

print(arr)
