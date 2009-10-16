class Movie < ActiveRecord::Base
  validates_presence_of :name

  def imdb_url
    return "http://www.google.com/search?q=imdb " + name if imdb_id.nil? || imdb_id.empty?
    "http://www.imdb.com/title/" + imdb_id
  end

  def image
    return "empty.png" if image_url.nil? || image_url.empty?
    image_url
  end
end
