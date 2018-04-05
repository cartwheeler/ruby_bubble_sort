def bubble_sort_by(arr)

print "initial arrray: #{arr}"
puts

l = arr.length - 1
swap = false

while swap == false do

	l.times do
		for i in 0...l
			result = yield arr[i], arr[i+1]
			if result > 0
				arr[i], arr[i+1] = arr[i+1], arr[i]
				swap = true
			end
		end
	end
end

print "sorted arrray: #{arr}"

end

test = bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end

puts test


 # > bubble_sort_by(["hi","hello","hey"]) do |left,right|
 # >   left.length - right.length
 # > end
 # => ["hi", "hey", "hello"]