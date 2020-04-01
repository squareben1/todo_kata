require 'printer'

describe Printer do
  describe '#print_intro' do
    it 'prints intro' do
      expect(subject.print_intro).to eq 'Welcome to the Todo app! Your Todos: '
    end
  end

  describe '#print_todos' do
    it 'prints you have no todos if array empty' do
      todos = []
      expect(subject.print_todos(todos)).to eq "You don't have any todos!"
    end

    it 'prints numbered list of 1 todo' do
      todos = ["Hello"]
      expect(subject.print_todos(todos)).to eq '1. Hello'
    end
  end
end