#
# This little program prints out the numbers 1 to 100 (inclusive).
# If the number is divisible by 3, print Crackle instead of the number.
# If it's divisible by 5, print Pop. If it's divisible by both 3 and 5, print
# CracklePop. You can use any language.
#

# Entrypoint
def main()
	print(cracklepop_numbers(1, 100))
end

# Generates CracklePop number sequence from the specified range.
def cracklepop_numbers(from, to)
	(from..to).to_a.map{ |n| cracklepop_number(n)}
end

# Transforms the specified number according to CraklePop rules.
def cracklepop_number(number)
	ret = number
	ret = 'Crackle' if div_by_3(number)
	ret = 'Pop' if div_by_5(number)
	ret = 'CracklePop' if div_by_3(number) and div_by_5(number)

	ret
end

def div_by_3(number)
	number % 3 == 0
end

def div_by_5(number)
	number % 5 == 0
end

main()
