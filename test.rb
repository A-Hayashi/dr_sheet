require 'rubyXL'

ary = []
book = RubyXL::Parser.parse('test.xlsx')                                     
sheet = book['Sheet1']                                                     
sheet.each do |row|                                                       
  ary << (row && row[0] && row[0].value)
end                                                                       


p ary.each_with_index.select{|e, i| e == "a"}.map{|e| e[1]}