
@NumbersToWords = class NumbersToWords
  words:
    0: 'zero'
    1: 'one'
    2: 'two'
    3: 'three'
    4: 'four'
    5: 'five'
    6: 'six'
    7: 'seven'
    8: 'eight'
    9: 'nine'

    10: 'ten'
    11: 'eleven'
    12: 'twelve'
    13: 'thirteen'
    14: 'fourteen'
    15: 'fifteen'
    16: 'sixteen'
    17: 'seventeen'
    18: 'eighteen'
    19: 'nineteen'

    20: 'twenty'
    30: 'thirty'
    40: 'forty'
    50: 'fifty'
    60: 'sixty'
    70: 'seventy'
    80: 'eighty'
    90: 'ninety'

    100: 'one hundred'
    200: 'two hundred'
    300: 'three hundred'
    400: 'four hundred'
    500: 'five hundred'
    600: 'six hundred'
    700: 'seven hundred'
    800: 'eight hundred'
    900: 'nine hundred'

  translate2Digits: (number) ->
    residue = number % 10
    tens = number - residue
    @translate(tens) + "-" + @translate(residue)

  translate3Digits: (number) ->
    residue = number % 100
    hundreds = number - residue
    @translate(hundreds) + " and " + @translate(residue)

  translate4PlusDigits:  (number) ->
      residue = number % 1000
      thousands = (number - residue) / 1000
      return @translate(thousands) + " thousand"  if residue is 0
      @translate(thousands) + " thousand, " + @translate(residue)

  translate: (number) ->
    result = @words[number]
    return result if result
    digits = number.toString().length
    if digits < 3 then @translate2Digits(number)
    else if digits < 4 then @translate3Digits(number)
    else if 3 < digits < 7 then @translate4PlusDigits(number)



