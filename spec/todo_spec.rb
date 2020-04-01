require 'todo'

describe Todo do
  describe 'prompt' do
    it 'returns string of instructions' do
      expect(subject.prompt).to eq "Type 'Add' + todo to add, type 'Done' + ID to delete"
    end
  end

  describe 'add' do
    it 'adds new todo item' do
      expect(subject.add("Hello")).to eq ["Hello"]
    end

    it 'adds second todo item' do
      subject.add("Hello")
      expect(subject.add("todo1")).to eq ["Hello", "todo1"]
    end
  end
end