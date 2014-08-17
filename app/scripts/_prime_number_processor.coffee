
@PrimeNumberProcessor = class PrimeNumberProcessor
  primeNumbers: []

  isPrimeNumber: (num) ->
    state = true
    if num isnt 2 and num % 2 is 0
      state = false
    else
      i = 2

      while i < num
        if num % i is 0
          state = false
          break
        ++i
    state

  generate: (n) ->
    count      = 0
    current    = 2
    @primeNumbers = []

    while count < n
      if @isPrimeNumber(current)
        @primeNumbers.push current
        count++
      current++
    @primeNumbers
