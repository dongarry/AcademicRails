class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
      t.integer :film_id
      t.string :film_name
      t.string :genre
      t.string :personalitycount
      t.integer :group
      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end
