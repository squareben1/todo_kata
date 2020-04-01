# frozen_string_literal: true

class Printer
  def self.print_intro
    'Welcome to the Todo app! Your Todos: '
  end

  def self.print_todos(arr)
    if arr == []
      "You don't have any todos!"
    else
      arr.each_with_index do |todo, index|
        return "#{index + 1}. #{todo}"
      end
    end
  end

  def self.print_options
    "What would you like to do? \nType 'add', followed by a sentence, to add a todo. \nType 'done', followed by the todo ID, to complete a todo."
  end
end
