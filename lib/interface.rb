require 'printer'

class Interface
  def initialize(printer = Printer)
    @printer = printer
  end

  def run_interface
    @printer.print_intro
  end
end