# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 4
# ============================================================
p array[1]

p array[1][1]

p array[1][1][2]

p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


number_array.map! do |number|
  if number.kind_of?(Array)
    number.map {|inner| inner += 5}
  else
    number += 5
  end
end
p number_array




# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


startup_names.each do |word|
  if word.is_a?(String)
    word << "ly"
  else
  word.each do |inner_element|
    if inner_element.is_a?(Array)
      inner_element.each do |third_layer_element|
         third_layer_element << "ly"
       end
    else
      inner_element << "ly"
    end
  end
end
end

p startup_names