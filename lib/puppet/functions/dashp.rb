Puppet::Functions.create_function(:'dashp') do
  dispatch :path_to_arr do
    param 'String', :path
  end

  def path_to_arr(path)
    tokens = path.split('/')
    # remove zero'th empty string that was in front of first slash
    tokens.delete_at(0)
    out = []
    count = 0
    while count < tokens.length do
      p = ""
      range = 0..count
      range.each { |i| p << "/#{tokens[i]}" }
      out[count] = p
      count = count + 1
    end
    out
  end
end

