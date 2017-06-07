arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr_2 = arr.delete_if{|x| x[0].chr == 's'}
p arr_2

arr_3 = arr.delete_if{|x| x[0].chr == 's' || x[0].chr == 'w'}

p arr_3