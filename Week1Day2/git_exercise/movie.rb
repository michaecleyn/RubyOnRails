class Movie
  attr_accessor :title, :price, :director

  def preview
    "Coming in 2016 don't miss #{self.title} directed by:#{self.director} for the price of:#{self.price}"
  end

  def cheaper?(movie)
    self.price < movie.price
  end

  def more_expensive?(movie)
    not self.cheaper?(movie)
  end

end
