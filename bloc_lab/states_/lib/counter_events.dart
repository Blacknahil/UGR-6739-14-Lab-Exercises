// enum CounterEvents { increment, decrement }

abstract class CounterEvents {}

class CounterIncrementPressed extends CounterEvents {}

class CounterDecrementPressed extends CounterEvents {}
