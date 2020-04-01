# frozen_string_literal: true

class Todo
  attr_accessor :todos
  def initialize
    @todos = []
  end

  def add(string)
    @todos.push(string)
  end

  def complete(index)
    puts "Completed #{@todos[index]}"
    @todos.shift(index)
  end
end
