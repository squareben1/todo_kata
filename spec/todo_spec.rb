# frozen_string_literal: true

require 'todo'

describe Todo do
  describe 'add' do
    it 'adds new todo item' do
      expect(subject.add('Hello')).to eq ['Hello']
    end

    it 'adds second todo item and confirms' do
      expect do
        (subject.add('Hello'))
      end.to output("Added todo Hello\n").to_stdout
      expect(subject.add('todo1')).to eq ['Hello', 'todo1']
    end
  end

  describe 'complete' do
    it 'deletes todo from array when given corresponding number and confirms' do
      subject.add('Hello')
      expect do
        (subject.complete(0))
      end.to output("Completed Hello\n").to_stdout
      expect(subject.complete(0)).to eq []
    end

    it 'deletes second item in array' do
      subject.add('Hello')
      subject.add('World')
      expect(subject.complete(1)).to eq ['Hello']
    end
  end
end
