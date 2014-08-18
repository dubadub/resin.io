
primes = new PrimeNumberProcessor()
@translator = new NumbersToWords()

$('.js-calculate').click ->
  $('#output').append(
    primes
      .fill(1000)
      .map (prime) ->
        inWords = @translator.translate(prime)
        $('<li/>').html(inWords.capitalize() + ';')
  )
