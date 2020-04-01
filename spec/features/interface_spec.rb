# frozen_string_literal: true

require 'interface'

describe Interface do
  
  describe '#run_interface' do
    it 'calls printer print intro' do
      # todo_class = class_double('Todo')
      # todo_instance = instance_double('Todo', { todos: []})
      # allow(todo_class).to receive(:new).and_return(todo_instance)
      printer_class_double = class_double('Printer', { print_intro: 'Welcome to the Todo app! Your Todos: '})
      interface = Interface.new(printer_class_double)
      expect(interface.run_interface).to eq 'Welcome to the Todo app! Your Todos: '
    end
  end
end
