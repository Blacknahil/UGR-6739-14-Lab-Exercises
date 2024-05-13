import kotlin.random.Random

fun generate_password(){

    val passwordLength=8

    val allowedChars= ('a'..'z') + ('A'..'Z') + ('0'..'9')+ "!@#$%^&*()-_=+<>?/{}~|".toList()
    val n=allowedChars.size

    var password=StringBuilder(passwordLength)

    for (i in 1..passwordLength){
        val char= allowedChars[Random.nextInt(n)]
        password.append(char)
    }

    println("Generated Password: $password")
}
