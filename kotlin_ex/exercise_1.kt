fun main(){

    print("Enter the first Number: ")
    val  num1 = readLine()?.toInt() ? :0

    print("Enter the second Number: ")
    val  num2 = readLine()?.toInt() ? :0


    print("Enter the operation (add, subtract, multiply, divide): ")
    val operation= readLine()?:""

    
    val result = find_result(num1 ?: 0, num2 ?: 0, operation.trim())

    print (result)
}


fun find_result(a:Int,b:Int,type:String):Int {
    if (type=="add"){
        return a+b
    }
    else if (type=="substract"){
        return a-b
    }
    else if (type=="multiply"){
        return a*b
    }
    else if (type=="divide"){
        return a/b
    
    }
    else{
        return 0
    }
}