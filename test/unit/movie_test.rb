require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "name is mandatory" do
    movie = Movie.new
    assert !movie.valid?

    movie.name = "Up"
    assert movie.valid?
  end

  test "imdb url is in proper format" do
    movie = Movie.new
    movie.imdb_id = "tt1049413"
    assert_equal "http://www.imdb.com/title/tt1049413", movie.imdb_url
  end

  test "sample image when no image present" do
    movie = Movie.new
    assert_equal "empty.png", movie.image_url
  end
 end
