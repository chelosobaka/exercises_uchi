arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

#напишите выражение, которое получает массив всех ключей
arr_keys = begin
  keys = []
  arr.each{|h| h.each_key{|key| keys << key}}
  keys
end

#напишите выражение, которое получает массив всех значений
arr_values = begin
  values = []
  arr.each{|h| h.each_value{|value| values << value}}
  values
end

#напишите выражение, которое получает сумму всех значений
sum_of_values = begin
  sum = 0
  arr.map{|h| h.each_value{|value| sum += value}}
  sum
end
