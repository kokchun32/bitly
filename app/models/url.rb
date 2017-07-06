class Url < ApplicationRecord

  def shorten
    short =  [('a'..'z'),(0..9)].map{|i| i.to_a}.flatten
    short_url = (0..10).map{short[rand(short.length)]}.join
    self.short_url = short_url
    # add_http
    # add_click
  end
end
