array = %w(012345678901234567890123456789)

array = array.join("").to_s.chars
array.map!{|x| x.to_i}

total = 0
array2 = []

a = 0
b = 9
array.map do |x|
    array2 << array[a..b]
    a = b + 1
    b = b + 10
end

p array2