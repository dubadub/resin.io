# prime_number_processor.coffee

describe 'PrimeNumberProcessor', ->

    it 'can generate first 10 prime numbers', ->
        processor = new PrimeNumberProcessor()
        result = processor.generate 10
        expect(result.length).toBe 10
        expect(result[3]).toBe 7
        expect(result[5]).toBe 13
        expect(result[7]).toBe 19
