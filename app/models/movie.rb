class Movie < ActiveRecord::Base
  validates_presence_of :name

  def imdb_url
    "http://www.imdb.com/title/" + imdb_id
  end
end
