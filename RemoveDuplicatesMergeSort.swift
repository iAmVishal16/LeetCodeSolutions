import Foundation

/*
 Remove duplicates from two arrays and merge them in sorted order
 ex: In the below problem 0,9 are repetitive numbers so the result
     will be = [1, 3, 4, 6]
*/

let arr1 = [0, 3, 1, 9]
let arr2 = [6, 9, 4, 0]

// Sort and Merge problem
func merge(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var result = [Int]()
    
    var arr1 = arr1
    var arr2 = arr2

    // sort both array first
    sort(&arr1, 0, arr1.count - 1)
    print(arr1)
    sort(&arr2, 0, arr2.count - 1)
    print(arr2)

    
    // apply merge
    var i = 0, j = 0
    while i < arr1.count && j < arr2.count {
        if arr1[i] == arr2[j] {
            i += 1
            j += 1
            continue
        }
        if arr1[i] < arr2[j] {
            result.append(arr1[i])
            i += 1
        } else {
            result.append(arr2[j])
            j += 1
        }
    }
    
    while i < arr1.count {
        result.append(arr1[i])
        i += 1
    }
    
    while j < arr2.count {
        result.append(arr1[j])
        j += 1
    }
    
    return result
}

// We're using quick sort for it
func sort(_ arr: inout [Int], _ low: Int, _ high: Int) {
    if low >= high {
        return
    }
    
    var s = low
    var e = high
    
    // pick a pivot element
    let m = (s + e) / 2
    let p = arr[m]
//    print("Start: \(s), End: \(e) Mid: \(m)")
    
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
    
    // now pivot is on correct place
    sort(&arr, low, e)
    sort(&arr, s, high)
}

print("Result: \(merge(arr1, arr2))")

/*__________________________________________________________________*/
// Solution Using Higher Order Function:
func mergeHO() -> [Int] {
    let temp = arr1 + arr2
    var a3: [Int] = []
    for i in temp {
        let fltArray = temp.filter({ $0 == i })
        if fltArray.count == 1 {
            a3.append(i)
        }
    }
    print(a3.sorted(by: { $0 < $1 }))
    return a3.sorted(by: { $0 < $1 })
}

print(mergeHO())

//: [Next](@next)
