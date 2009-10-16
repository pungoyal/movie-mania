class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.boolean :seen
      t.string :director
      t.float :rating
      t.string :iurl
      t.text :summary
    end
  end

  def self.down
    drop_table :movies
  end
end
