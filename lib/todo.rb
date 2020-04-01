# frozen_string_literal: true

class Todo
  attr_accessor :todos
  def initialize
    @todos = []
  end

  def add(string)
    puts "Added todo #{string}\n"
    @todos.push(string)
  end

  def complete(index)
    puts "Completed #{@todos[index]}\n"
    @todos.shift(index)
  end
end
