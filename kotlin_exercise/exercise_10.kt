class BankAccount(var accountNumber:String, var balance:Double){

    fun deposit(amount:Double){
        balance+=amount
        
    }

    fun withdraw(amount:Double){
        if (balance>=amount){
            balance-=amount
    }
    else{
        //Throw an error
        print("Insufficent balance")
    }

}
    fun printBalance(){
        print(balance)
    }
}