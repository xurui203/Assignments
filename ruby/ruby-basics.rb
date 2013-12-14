##
# Implement any sorting algorithm.
# Bonus: keep it concise
#
def sort(array)
	array.reduce([])do |sorted, element|
		index = sorted.find_index do |item|
			element < item
		end
		index || = sorted.length
		sorted.insert(index, element)
	end 	
end

##
# Longest Collatz sequence
#
def euler14(n)
	cache = {1: 1}
	2.upto(n) do }i|
		collatz(n, cache)
	end
	cache.values.max	
end

def collatz(n, cache)
	unless cache.inlcude? n
		collatz._next = 
			if n.even?
				n/2
			else
				3*n+1
			end
		cache[n] = 1+ collatz(collatz_next, cache)
	end
	cache[n]
end

def collatzInterative(n, cache)
	unless cache.include? n
		counter = 1
		current = n
		while current.include? current
			if cache.include? current
				counter +=cache[current]
				break
			end
			if current.even?
				current = current/2
			else
				current = current * 3 + 1
			end
			counter += 1
		end
		cache[n] = counter
	end



##
# Return a random permutation of the elements.
#
def shuffle(array)
	size = arr.length
	while size >= 0 do
		swap = Random.rand(size)
		last = size - 1
		tmp = arr[last]
		arr[last] = arr[swap]
		arr[swap] = 1
end

##
# Perform a Rot13 transformation on a string.
#
def rot13(string)

end

def query_classes(data, criteria)

end
