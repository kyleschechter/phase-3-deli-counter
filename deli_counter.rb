# Write your code here.
def take_a_number array, name
  array << "#{name}"
  puts "Welcome, #{name}. You are number #{array.length} in line."
end

def line array
  if array.length > 0
    resp = array.map.with_index {|name, index| "#{index + 1}. #{name}"}.join(" ")
    puts "The line is currently: #{resp}"
  else
    puts "The line is currently empty."
  end
end

def now_serving array
  if array.length > 0
    puts "Currently serving #{array[0]}."
    array.delete_if.with_index {|name, index| index == 0}
  else
    puts "There is nobody waiting to be served!"
  end
end