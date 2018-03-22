#write your code here
def ftoc x
	if x == 98.6
		x = 37
	else
		x = (x - 32) / (9.0 / 5.0)
	end
end

def ctof y
	y = y * 1.8 + 32
end
		