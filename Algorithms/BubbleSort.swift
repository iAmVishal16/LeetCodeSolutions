// Sort an array without using any inbuilt function by iterative way.

var arr1 = [1,5,7,9,3,1,10]

// Decending
func bubbleSort(_ arr: inout [Int]) {
    
    let n = arr.count
    var temp = 0
    
    for i in 0..<n {
        for j in i+1..<n {
            if arr[i] < arr[j] {
                temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            }
        }
    }
    
    print("Bubble Sort: ",arr.description)
}

bubbleSort(&arr1)
