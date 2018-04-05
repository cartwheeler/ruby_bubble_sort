def bubble_sort(numbers)

print "initial numbers: #{numbers}"
puts

	def compare(numbers, idx)
		while numbers[idx] > numbers[idx+1]
			numbers[idx], numbers[idx+1] = numbers[idx+1], numbers[idx]
		end
	end

l = numbers.length - 1

	l.times do
		for j in 0...l
			compare(numbers, j)
		end
	end

print "sorted numbers: #{numbers}"
puts

end

numbers = [4,3,78,2,0,2]
bubble_sort(numbers)

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]