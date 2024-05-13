fun main(){

    val word = "Ahosahdoiu oisbjdfb  JBHIB hsdbfib"

    get_result(word)
}

fun get_result(word:String){

    var vowels_count=0
    val vowels = setOf('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')

    var upper_letters=0

    val words_count= word.split(" ").filter{
        it.isNotEmpty()
    }.size

    for (char in word){
        if (char in vowels){
            vowels_count++
        }

        if (char.isUpperCase()){
            upper_letters++
        }



        println("Number of words: $words_count")

        println("Number of Vowles in the $word is: $vowels_count ")

        println("NUmber of Upper Letter Count in The $word is : $upper_letters")
    }


}