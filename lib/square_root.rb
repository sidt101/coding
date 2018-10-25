def square_root(num)
  test(num, 1)
end

def test(num, guess)
  return guess if closeEnough?(num/guess, guess)
  test(num, betterGuess(num, guess))
end

def betterGuess(num, guess)
  (guess + num/guess) / 2
end

def closeEnough?(a, b)
  (a - b).abs < 0.001
end
