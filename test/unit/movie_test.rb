require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "name is mandatory" do
    movie = Movie.new
    assert !movie.valid?

    movie.name = "Up"
    assert movie.valid?
  end
end
