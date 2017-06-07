arr = ["b", "a"]
arr = arr.product(Array(1..3))       
arr.first.delete(arr.first.last)    #should return 1

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)    #should return [1, 2, 3]