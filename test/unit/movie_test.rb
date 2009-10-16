require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "name is mandatory" do
    movie = Movie.new
    assert !movie.valid?

    movie.name = "Up"
    assert movie.valid?
  end
 end
