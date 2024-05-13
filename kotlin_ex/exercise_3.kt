fun main(){

    print("Enter the mark you got out 100: ")
    val  num1 = readLine()?.toInt() ? :0

    val result = grade(num1 ?: 0)

    print (result)
}


fun grade(num:Int):String{

    if (num >= 90){
        return "A"
    }
    else if (num>=80){
        return "B"
    }

    else if (num>=70){
        return "C"
    }

    else if (num>=60){
        return "D"
    }
    else{
        return "F"
    }
}