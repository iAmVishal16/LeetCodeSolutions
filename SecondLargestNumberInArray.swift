func getSecondLargestNumberInArray(_ arr: [Int]) {
    let n = arr.count
    
    var max = 0
    var second_max = 0
    
    for i in 0..<n {
        // Is it the max?
        if( arr[i] > max ) {
            // Make the old max the new 2nd max.
            second_max = max;
            // This is the new max.
            max = arr[i];
        }
            // It's not the max, is it the 2nd max?
        else if( arr[i] > second_max ) {
            second_max = arr[i];
        }
    }
    
    print("Array max: \(max), second_max: \(second_max)\n");
}

getSecondLargestNumberInArray([1, 5, 3, 2, 0, 5, 7, 6])
