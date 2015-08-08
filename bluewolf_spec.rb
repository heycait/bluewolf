require_relative 'bluewolf'

describe '#duplicate_number' do

  it 'should raise error if parameter is not an array of integers' do
    expect{duplicate_number(1)}.to raise_error(ArgumentError)
    expect{duplicate_number([1,2,3,'4'])}.to raise_error(ArgumentError)
  end

  it 'should return an integer' do
    expect(duplicate_number([1,2,2,4,5])).to be_kind_of(Integer)
  end

  it 'should return the duplicate number' do
    expect(duplicate_number([1,2,2,4,5])).to eq(2)
  end

end



describe '#first_non_repeat_char' do

  it 'should raise error if parameter is not a string' do
    expect{first_non_repeat_char(1)}.to raise_error(ArgumentError)
  end

  it 'should return a single character string' do
    expect(first_non_repeat_char("DEFD")).to be_kind_of(String)
    expect(first_non_repeat_char("DEFD").length).to eq(1)
  end

  it 'should return the first non-repeating character' do
    expect(first_non_repeat_char("DEFD")).to eq("E")
  end
end