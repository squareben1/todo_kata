require 'printer'
require 'todo'

class Interface
  def initialize(todo, printer = Printer)
    @todo = todo
    @printer = printer
  end

  def run_interface
    @printer.print_todos(@todo.todos)
  end
end