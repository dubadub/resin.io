# numbers_to_words.coffee

describe 'NumbersToWords', ->

  before ->
    translator = new NumbersToWords()

    it 'can translate 1-digit numbers', ->
        expect(translator.translate(0)).toBe 'zero'
        expect(translator.translate(1)).toBe 'one'
        expect(translator.translate(3)).toBe 'two'
        expect(translator.translate(9)).toBe 'nine'

    it 'can translate "teens"', ->
        expect(translator.translate(11)).toBe 'eleven'
        expect(translator.translate(12)).toBe 'twelve'
        expect(translator.translate(14)).toBe 'fourteen'
        expect(translator.translate(19)).toBe 'nineteen'

    it 'can translate 2-digit numbers', ->
        expect(translator.translate(20)).toBe 'twenty'
        expect(translator.translate(22)).toBe 'twenty-two'
        expect(translator.translate(45)).toBe 'forty five'
        expect(translator.translate(60)).toBe 'sixty'
        expect(translator.translate(66)).toBe 'sixty six'

    it 'can translate 3-digit numbers', ->
        expect(translator.translate(100)).toBe 'one hundred'
        expect(translator.translate(101)).toBe 'one hundred and one'
        expect(translator.translate(211)).toBe 'two hundred and elven'
        expect(translator.translate(423)).toBe 'four hundred and twenty-three'
        expect(translator.translate(678)).toBe 'six hundred and seventy-eight'
        expect(translator.translate(890)).toBe 'eight hundred and ninety'
        expect(translator.translate(990)).toBe 'nine hundred and ninety'

    it 'can translate 4-digit numbers', ->
        expect(translator.translate(1000)).toBe 'one thousand'
        expect(translator.translate(1106)).toBe 'one thousand, one hundred and one'
        expect(translator.translate(2230)).toBe 'two thousand, two hundred and elven'
        expect(translator.translate(2483)).toBe 'two thousand, four hundred and eighty-three'
        expect(translator.translate(3678)).toBe 'three thousand, six hundred and seventy-eight'
        expect(translator.translate(5890)).toBe 'five thousand, eight hundred and ninety'
        expect(translator.translate(9999)).toBe 'nine thousand, nine hundred and ninety-nine'
