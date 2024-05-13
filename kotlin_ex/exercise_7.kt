
fun get_min_max(word:String){

    if (word.isEmpty()){
        println("Input can not be empty")
        return 
    }

    var minChar=word[0]

    var maxChar=word[0]

    for (char in word){
        if (char<minChar){
            minChar=char
        }
        if (char>maxChar){
            maxChar=char
        }
    }

    println("Minimum ASCII character: $minChar")
    println("Maximum ASCII character: $maxChar")
}