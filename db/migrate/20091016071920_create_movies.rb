class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.integer :language
      t.boolean :seen
      t.string :director
      t.float :rating
      t.string :imdb_id
      t.string :image_url
      t.string :tagline
      t.text :plot
    end

    Movie.create :name =>"Up", :year => 2009, :language => 0, :seen => true, :director => "Pete Docter",
                 :rating => 8.6, :tagline => "", :imdb_id => "tt1049413",
                 :image_url =>""
    Movie.create :name =>"Inglourious Basterds", :year => 2009, :language => 0, :seen => true, :director => "Quentin Tarantino",
                 :rating => 8.6, :tagline => "Once upon a time in Nazi occupied France...", :imdb_id => "tt0361748",
                 :image_url =>""
    Movie.create :name =>"Kaminey", :year => 2009, :language => 1, :seen => true, :director => "Vishal Bhardwaj",
                 :rating => 7.9, :tagline => "", :imdb_id => "tt1274295",
                 :image_url =>""
    Movie.create :name =>"The Shawshank Redemption", :year => 1994, :language => 0, :seen => true, :director => "Frank Darabont",
                 :rating => 9.2, :tagline => "Fear can hold you prisoner. Hope can set you free.", :imdb_id => "tt0111161",
                 :image_url =>""
    Movie.create :name =>"The Godfather", :year => 1972, :language => 0, :seen => false, :director => "Francis Ford Coppola",
                 :rating => 9.1, :tagline => "An offer you can't refuse.", :imdb_id => "tt0068646",
                 :image_url =>""
    Movie.create :name =>"Pulp Fiction", :year => 1994, :language => 0, :seen => true, :director => "Quentin Tarantino",
                 :rating => 8.9, :tagline => "Girls like me don't make invitations like this to just anyone!", :imdb_id => "tt0110912",
                 :image_url => "http://ecx.images-amazon.com/images/I/519VHCS1KAL._SL500_AA240_.jpg"
  end

  def self.down
    drop_table :movies
  end
end
