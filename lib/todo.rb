# frozen_string_literal: true

class Todo
  def initialize
    @todos = []
  end

  def add(string)
    @todos.push(string)
  end

  def complete(index)
    @todos.shift(index)
  end
end
