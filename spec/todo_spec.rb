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

  describe 'complete' do
    it 'deletes todo from array when given corresponding number' do
      subject.add("Hello")
      expect(subject.complete(0)).to eq []
    end

    it 'deletes second item in array' do
      subject.add("Hello")
      subject.add("World")
      expect(subject.complete(1)).to eq ["Hello"]
    end
  end
end