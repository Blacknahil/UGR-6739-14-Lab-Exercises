
fun findMax(nums: Array<Int>): Int? {
    if (nums.isEmpty()){
        throw IllegalArgumentException("array can not be empty")
    }
    return nums.maxOrNull()
}



fun filterEvenNumbers(nums: Array<Int>): List<Int> {
    val evenNumbers = mutableListOf<Int>()
    for (num in nums) {
        if (num % 2 == 0) {
            evenNumbers.add(num)
        }
    }
    return evenNumbers
}

fun calculateAverage(nums:Array<Double>):Double{

    if (nums.isEmpty()){
        throw IllegalArgumentException("Array Can not be empty")
    }
    var _sum=nums.sum()
    var res= _sum/nums.size
    return res
}

