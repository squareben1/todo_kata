# frozen_string_literal: true

class Todo
  def initialize
    @todos = []
  end

  def prompt
    "Type 'Add' + todo to add, type 'Done' + ID to delete"
  end

  def add(string)
    @todos.push(string)
  end
end
