# frozen_string_literal: true

class Printer
  def self.print_intro
    "Welcome to the Todo app! Your Todos: \n"
  end

  def self.print_todos(arr)
    string = "Welcome to the Todo app! Your Todos: \n"
    if arr == []
      string += "You don't have any todos!\n"
    else
      arr.each_with_index do |todo, index|
        string += "#{index + 1}. #{todo}\n"
      end
    end
    string += "What would you like to do? \nType 'add', followed by a sentence, to add a todo. \nType 'done', followed by the todo ID, to complete a todo."
  end

  def self.print_options
    "What would you like to do? \nType 'add', followed by a sentence, to add a todo. \nType 'done', followed by the todo ID, to complete a todo."
  end
end
