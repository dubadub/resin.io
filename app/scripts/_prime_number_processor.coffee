
@PrimeNumberProcessor = class PrimeNumberProcessor
  primeNumbers: []

  _isPrimeNumber: (num) ->
    status = true
    if num isnt 2 and num % 2 is 0
      status = false
    else
      i = 2

      while i < num
        if num % i is 0
          status = false
          break
        ++i
    status

  generate: (n) ->
    count      = 0
    current    = 2

    while count < n
      if @_isPrimeNumber(current)
        @primeNumbers.push current
        count++
      current++
    @primeNumbers
