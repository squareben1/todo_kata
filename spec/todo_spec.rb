require 'todo'

describe Todo do 
  it 'returns string of instructions' do
    expect(subject.prompt()).to eq "Type 'Add' + todo to add, type 'Done' + ID to delete"
  end 
end 