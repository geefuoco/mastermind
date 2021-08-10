class CodeMatcher

  def color_match(code_1, code_2)
    matches = code_1.reduce(Hash.new(0)) do |hash, element|  
      code_2.find_index(element).nil? ? nil : hash[element] += 1
      hash
    end
    matches.length
  end

  def color_and_position(code_1, code_2)
    counter = 0
    code_1.reduce(0) do |total, element|
      if element == code_2[counter] then
        total += 1
      end
      counter += 1
      total
    end
  end

end