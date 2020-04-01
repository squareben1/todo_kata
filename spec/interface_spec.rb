require 'interface'

describe Interface do
  describe '#run_interface' do
    xit 'calls printer print intro' do
      printer_class_double = class_double('Printer', { print_todos: 'Welcome to the Todo app! Your Todos: '})
      interface = Interface.new(printer_class_double)
      expect(interface.run_interface).to_include 'Welcome to the Todo app! Your Todos: '
    end

    xit 'calls printer print todos, returns empty todo arr' do
      # todo_class = class_double('Todo')
      # todo_instance = instance_double('Todo')
      # allow(todo_instance).to receive(:todos).and_return([])
      # allow(todo_class).to receive(:new).and_return(todo_instance)
      printer_class_double = class_double('Printer', { print_intro: "Welcome to the Todo app! Your Todos: \n"})
      allow(printer_class_double).to receive(:print_todos).with([]).and_return("You don't have any todos!\n")
      interface = Interface.new(printer_class_double)
      expect(interface.run_interface).to eq "Welcome to the Todo app! Your Todos: \nYou don't have any todos!\n"
    end
  end
end
