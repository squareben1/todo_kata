# frozen_string_literal: true

require 'interface'
require 'printer'
require 'todo'

xdescribe Interface do
  describe '#run_interface' do
    it 'calls printer print todos, returns empty todo arr' do
      todo = Todo.new
      interface = Interface.new(todo, Printer)
      expect(interface.run_interface).to include "Welcome to the Todo app! Your Todos: \nYou don't have any todos!\n"

      displayer.stub(:gets).and_return('add Hello')
    end
  end
end
