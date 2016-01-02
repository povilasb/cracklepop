require 'spec_helper'

require 'cracklepop'

describe 'divisible_by' do
  it 'returns true when number is divisible by the specified number' do
    divisible = divisible_by(6, 3)

    expect(divisible).to eq(true)
  end

  it 'returns true when number is not divisible by the specified number' do
    divisible = divisible_by(5, 3)

    expect(divisible).to eq(false)
  end
end

describe 'cracklepop_number' do
  it 'returns the same number if its not divisible by 3 nor by 5' do
    number = cracklepop_number(7)

    expect(number).to eq(7)
  end

  it 'returns "Crackle" if its divisible by 3' do
    number = cracklepop_number(9)

    expect(number).to eq('Crackle')
  end

  it 'returns "Pop" if its divisible by 5' do
    number = cracklepop_number(10)

    expect(number).to eq('Pop')
  end

  it 'returns "CracklePop" if its divisible by 3 and 5' do
    number = cracklepop_number(15)

    expect(number).to eq('CracklePop')
  end
end

describe 'cracklepop_numbers' do
  it 'generates array with the length of the specified range' do
    numbers = cracklepop_numbers(1, 10)

    expect(numbers.size).to eq(10)
  end

  it 'generates number array with cracklepop translated items' do
    numbers = cracklepop_numbers(1, 10)

    expect(numbers).to eq([1, 2, 'Crackle', 4, 'Pop', 'Crackle', 7,
       8, 'Crackle', 'Pop'])
  end
end
