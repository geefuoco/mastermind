class CodeMatcher

  def self.match?(code_1, code_2)
    code_1 == code_2
  end

  def self.color_match(code_1, code_2)
    matches = code_1.reduce(Hash.new(0)) do |hash, element|  
      code_2.find_index(element).nil? ? nil : hash[element] += 1
      hash
    end
    matches.length
  end

  def self.color_and_position(code_1, code_2)
    code_1.reduce(0) do |counter, element|
      element == code_2[counter] ? counter += 1 : counter
    end
  end

end