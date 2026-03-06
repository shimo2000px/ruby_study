# sortメソッドを利用せず、数字を昇順ソートして出力するプログラム(chapter01_01メソッド)を作成

# パターンA(ループ条件を固定し、全ての要素を比較する方法)
# 欠点として、すでにソートされている場合でも全ての要素を比較するため、効率が悪い
def chapter01_01(number_array)
  n = number_array.length
  
  n.times do
  (n - 1).times do |j|
    if number_array[j] > number_array[j + 1]
      number_array[j], number_array[j + 1] = number_array[j + 1], number_array[j]
    end
  end
end

return number_array
end

p chapter01_01([8, 2, 6, 4])

# パターンB(ループ条件を動的に変更する方法)
# ループ条件を動的に変更することで、すでにソートされている場合はループを終了するため、効率が向上する
def chapter01_02(number_array)
  n = number_array.length
  
  loop do
    swapped = false
    
    (n - 1).times do |j|
      if number_array[j] > number_array[j + 1]
        number_array[j], number_array[j + 1] = number_array[j + 1], number_array[j]
        swapped = true
      end
    end
    
    break unless swapped
  end
  
  return number_array
end

p chapter01_02([8, 2, 6, 4])




# 異なるn個のものから2個を選ぶ、重複のない組み合わせを出力するプログラム(chapter01_02メソッド)を作成してください。
# 出力例：numberに5が渡された場合、[[1,2], [1,3], [1,4], [1,5], [2,3], [2,4], [2,5], [3,4], [3,5], [4,5]]を返す

# パターンA(ループ条件を固定し、全ての要素を比較する方法)
# 欠点として、すでにソートされている場合でも全ての要素を比較するため、効率が悪い
def chapter01_02(number)
  result = []
  
  (1..number).each do |i|
    ((i + 1)..number). each do |j|
      result << [i,j]
    end
  end
  result
end
p chapter01_02(5)

# パターンB
# combinationメソッドを利用して、重複のない組み合わせを生成する方法
# combinationメソッドは、配列から指定した数の要素を選び出す組み合わせを生成するためのメソッドで、効率的に組み合わせを生成することがでる
def chapter01_02(number)
  (1..number).to_a.combination(2).to_a
end
p chapter01_02(5)

