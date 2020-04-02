require_relative 'printer'
require_relative 'todo'

class Interface
  def initialize(todo = Todo.new, printer = Printer)
    @todo = todo
    @printer = printer
  end

  def process(choice)
    if choice.include?('add')
      choice.slice!(0, 4)
      @todo.add(choice)
    elsif choice.include?('done')
      choice.slice!(0, 4)
      @todo.complete(choice.to_i)
    elsif choice == 'exit'
      exit
    end
  end

  def run_interface
    loop do 
      puts @printer.print_todos(@todo.todos)
      process(STDIN.gets.strip)
    end
  end
end