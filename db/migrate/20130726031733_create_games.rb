class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.string :publisher
      t.string :developer
      t.date :released

      t.timestamps
    end
  end
end
