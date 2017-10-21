class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.decimal :length
      t.integer :year

      t.timestamps
    end
  end
end
