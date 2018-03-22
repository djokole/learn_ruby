def add x, y
	z = x + y
end

def subtract x, y
	z = x - y
end

sum = 0

def sum numbers
	numbers.inject(0){|sum,x| sum + x}
end

numbers = []

def multiply numbers
	numbers.inject(1){|mult,x| mult * x}
end

def power x, y
	x = x ** y
end

def factorial x
	f = 1
	while x > 0
		f = f * x
		x = x - 1
	end
	if x == 0
		x = 1
	end
	f
end
