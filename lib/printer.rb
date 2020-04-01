
class Printer
  def print_intro
    'Welcome to the Todo app! Your Todos: '
  end

  def print_todos(arr)
    if arr == []
      "You don't have any todos!"
    else 
      arr.each_with_index do |todo, index|
        return "#{index + 1}. #{todo}"
      end
    end 
  end
end