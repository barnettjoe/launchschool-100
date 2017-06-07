#month_birth = 'june'
#months = {:'june' => '6'} #{january: 1, february: 2, march: 3, april: 4, may: 5, june: 6, july: 7, august: 8, september: 9, october: 10, november: 11, december: 12}
#puts months[:month_birth]


x ='june'
y = x.to_sym


hash = {june: 6}
puts hash.fetch(y)
