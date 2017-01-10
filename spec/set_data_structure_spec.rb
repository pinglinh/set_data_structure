require_relative "../lib/set_data_structure"

describe SetDataStructure do

  it 'creates a new object of class SetDataStructure' do
    set = SetDataStructure.new
    expect(set.class).to eq(SetDataStructure)
  end

  it 'returns an empty set' do
    set = SetDataStructure.new([])
    expect(set.size).to eq(0)
  end

  it 'returns the number of elements in the set' do
    set = SetDataStructure.new([1,2,3,4,5])
    expect(set.size).to eq(5)
  end

  it 'contains an element' do
    set = SetDataStructure.new([1,2,3,4,5])
    expect(set.include?(4)).to eq(true)
  end

  it 'adds a new member to the set' do
    set = SetDataStructure.new([1,2,3,4,5])
    set.add(8)
    expect(set.include?(8)).to be true
  end

  it 'does not add an element if the element is already in the set' do
    set = SetDataStructure.new([1,2,3,4,5])
    set.add(4)
    expect(set).to eq("This element is already in the set!")
  end

  it 'removes an element from the set' do
    set = SetDataStructure.new([1,2,3,4,5])
    set.delete(5)
    expect(set.to_a).to eq([1,2,3,4])
  end


end
