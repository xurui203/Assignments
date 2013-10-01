-- Problem 1: Write myZip which zips two lists

myZip [] [] = []
myZip (x1:xs1) (x2:xs2) = (x1, x2):myZip xs1 xs2

-- Problem 2: Write qsort implementing quicksort

qsort [] = []
qsort (pivot:xs) = 
	let less = qsort [x | x <- lst < pivot}
		greater = [x | x <-lst > pivot]
	in less ++ [pivot] ++ greater

-- Problem 3: Write function fib n, that computes the nth number in the fibonacci sequence in 0(n) time

fib n = 
	let fibHelper(a, b) 0 = a
		fibHelper(a,b) 1 = b
		fibHelder(a,b) n = fibHelper(a, a+b) (n-1)
	in fibHelper(0,1) n

-- Problem 3 Bonus: Construct an infinite sequence of fibonacci numbers, fibs

fibs = 0: 1: next fibs
        where next(a : b : xs) = (a + b) : next (b : xs)

-- Problem 4: http://projecteuler.net/problem=6

euler4 = 
	let sumOfSquares = sum [x * X | x <= [1..100]]
		squareOfSums = sum[1..100]*sum[1..100]
	in squareOfSums - sumOfSquares


-- Problem 5: http://projecteuler.net/problem=9

triplet =
	head [a* b* c |   a<- [1..1000], b <- [1..1000], let c = 1000 - a - b, c >0, a^2+b^2==c^2]

-- Problem 6: http://projecteuler.net/problem=5

foldl lcm 1 [1..20]

