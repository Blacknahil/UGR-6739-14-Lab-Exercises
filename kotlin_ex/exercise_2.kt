

fun main(){

    print("Enter the magnitude ")
    val num= readLine()?.toInt() ?: 0

    print("Enter the initial unit:")
    val unit1=readLine()?:""

    print("Enter the goal unit:")
    val unit2= readLine()?:""

    var result: Double = 0.0
    
    if (unit1=="kilometer"){

        // if (unit2=="meter"){
            
        //     result = kilometerToMeter(num.toDouble())

        // }
        if (unit2=="Miles"){
            result=kilometersToMiles(num.toDouble())
        }
    }

    else if (unit1=="Miles"){

        if (unit2=="kilometer"){
            result = milesToKilometers(num.toDouble())
        }
    }

    print(result)


    


}


fun kilometersToMiles(km:Double):Double{
    return km * 0.621371

}

fun milesToKilometers(miles: Double): Double {
    if (miles != 0.0) {
        return miles * 1.60934
    } else {
        throw IllegalArgumentException("Distance cannot be zero.")
    }
}
