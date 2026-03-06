def chapter02_01(number)
  number.times do |i|
    # ここでnにiを1増やした値を代入しないと、iが0から始まるため、1から数えることができない
    n = i += 1
      if n % 15 == 0
        p "FizzBuzz!"
      elsif n % 5 == 0
        p "Buzz!"
      elsif n % 3 == 0
      p "Fizz!"
    else 
      p n
    end
  end
end
chapter02_01(20)
