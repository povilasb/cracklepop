#
# This little program prints out the numbers 1 to 100 (inclusive).
# If the number is divisible by 3, print Crackle instead of the number.
# If it's divisible by 5, print Pop. If it's divisible by both 3 and 5, print
# CracklePop. You can use any language.
#

# Entrypoint
def main
  print(cracklepop_numbers(1, 100))
end

# Generates CracklePop number sequence from the specified range.
def cracklepop_numbers(from, to)
  (from..to).to_a.map { |n| cracklepop_number(n) }
end

# Transforms the specified number according to CraklePop rules.
def cracklepop_number(number)
  ret = number
  ret = 'Crackle' if number.divisible_by?(3)
  ret = 'Pop' if number.divisible_by?(5)
  ret = 'CracklePop' if number.divisible_by?(3, 5)

  ret
end

# Checks if number is divisible by the specified number.
def divisible_by(number, div_by)
  number % div_by == 0
end

# Checks if number is divisible by multiple other numbers.
def divisible_by_mult?(number, *args)
  args.all? { |arg| divisible_by(number, arg) }
end

# Extends Integer class with divisibly_by predicate.
class Integer
  def divisible_by?(*args)
    divisible_by_mult?(self, *args)
  end
end

main if __FILE__ == $PROGRAM_NAME
