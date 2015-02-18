class Book
  attr_accessor :title, :price, :author

  def headline
    "#{self.title} (#{self.price}) (#{self.author})"
  end

  def cheaper?(book)
    self.price < book.price
  end

  def more_expensive?(book)
    not self.cheaper?(book)
  end
end
