require 'printer'

describe Printer do
  it 'prints intro' do
    expect(subject.print_intro).to eq 'Welcome to the Todo app! Your Todos: '
  end
end