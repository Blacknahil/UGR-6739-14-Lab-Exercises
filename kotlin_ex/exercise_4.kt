var threshold= 0.5
fun main(){

    val price = 1000

    val discount= 0.45

     

    
    val result = get_discount(price,discount)

    print (result)
}

fun get_discount(price:Int,discount:Double):Double{

    if (discount<=threshold){

        val res= price-(price*discount)
        return res.toDouble()
    }

    else{
        print("the discount is too high and set the discount to the threshold value.")
        return price.toDouble()
    }

}