class Tweet
  attr_accessor :content

  def valid?
    # "#{content}".chars.length <= "#{140}".to_i
    content.length <= 140
  end

  def post
    valid?
    puts "#{content}"
  end
end


# class Tweet
#   attr_accessor :content

#   def valid?
#     content.length <= 140
#   end

#   def post
#     if valid?
#       puts content
#       true
#     else
#       false
#     end
#   end
# end
